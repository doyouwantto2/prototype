"use client";

import { useForm, SubmitHandler } from "react-hook-form";

interface LoginInput {
  name: string;
  password: string;
}

export default function Page() {
  const {
    register,
    handleSubmit,
    reset,
    formState: { isSubmitting },
  } = useForm<LoginInput>();

  const onSubmit: SubmitHandler<LoginInput> = async (data) => {};

  return (
    <div>
      This is login page
      <form onSubmit={handleSubmit(onSubmit)}>
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
      <a href="register">Register</a>
    </div>
  );
}
