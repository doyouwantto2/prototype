"use client";
import { useForm, SubmitHandler } from "react-hook-form";

interface RegisterInput {
  email: string;
  name: string;
  password: string;
}

export default function Page() {
  const {
    register,
    handleSubmit,
    reset,
    formState: { isSubmitting },
  } = useForm<RegisterInput>();

  const onSubmit: SubmitHandler<RegisterInput> = async (data) => {
    try {
      const res = await fetch("/api/user", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(data),
      });
      const result = await res.json();
      if (!res.ok) throw new Error(result.error || "Something went wrong");

      console.log("User created:", result);
      reset();
      window.location.reload();
    } catch (error: any) {
      console.error(error);
      alert(error.message || "An error occurred");
    }
  };

  return (
    <div>
      <form onSubmit={handleSubmit(onSubmit)}>
        <input {...register("email")} type="email" placeholder="Email:" />
        <br />
        <input {...register("name")} type="text" placeholder="Name:" />
        <br />
        <input
          {...register("password")}
          type="password"
          placeholder="Password:"
        />
        <br />
        <button type="submit" disabled={isSubmitting}>
          {isSubmitting ? "Submitting..." : "Submit"}
        </button>
      </form>
    </div>
  );
}
