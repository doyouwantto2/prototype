import { NextResponse } from "next/server";
import { prisma } from "../../../lib/prisma";

export async function GET() {
  return NextResponse.json({ response: "Hi" });
}

export async function POST(req: Request) {
  try {
    const data = await req.json();

    if (!data.email || !data.name || !data.password) {
      return NextResponse.json(
        { error: "Missing required fields" },
        { status: 400 },
      );
    }

    const newUser = await prisma.user.create({
      data: {
        email: data.email,
        name: data.name,
        password: data.password,
      },
    });

    return NextResponse.json(newUser, { status: 201 });
  } catch (error: any) {
    console.error("Error creating user:", error);

    if (error instanceof SyntaxError) {
      return NextResponse.json(
        {
          error:
            "Invalid JSON body. Make sure Content-Type is application/json",
        },
        { status: 400 },
      );
    }

    return NextResponse.json(
      { error: "Internal Server Error" },
      { status: 500 },
    );
  }
}
