"use client";

export default function Page() {
  const handleSubmit = async (event: React.FormEvent<HTMLFormElement>) => {
    event.preventDefault();
    const formData = new FormData(event.currentTarget);
    const userData = {
      email: formData.get("email"),
      name: formData.get("name"),
      password: formData.get("password"),
    };

    try {
      const response = await fetch("/api/user", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(userData),
      });

      if (!response.ok) {
        const text = await response.text();
        console.error("Server error:", text);
        throw new Error(`HTTP error ${response.status}`);
      }

      const result = await response.json();
      console.log("Success:", result);
    } catch (error) {
      console.error("Error:", error);
    }
  };

  return (
    <div>
      <form onSubmit={handleSubmit}>
        <h1>Create new user</h1>
        <input type="email" name="email" placeholder="Enter email:" required />
        <br />
        <input
          type="text"
          name="name"
          placeholder="Enter user name:"
          required
        />
        <br />
        <input
          type="password"
          name="password"
          placeholder="Enter password:"
          required
        />
        <br />
        <button type="submit">Send</button>
      </form>
    </div>
  );
}
