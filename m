Return-Path: <clang-built-linux+bncBC2ORX645YPRBW6ZSSEQMGQEBKMUBPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EAF3F672E
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 19:31:08 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id z19-20020a631913000000b00252ede336casf4622375pgl.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 10:31:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629826267; cv=pass;
        d=google.com; s=arc-20160816;
        b=m0HLttDuBhWFDhLXH1qOQ5dxh8gE7v/6kxxprQOqv1XTevsdY5wT68BGHjGWTN3p4Q
         Iij8Uh9hiVpt4AgNl3n2ezLabi0Xl7C4OJWcjOmzVrRswtJ5XUIBx5bUv9Q9o0QALziq
         P1wMZVQJby8phy5v4KkMQ+nI/XcT3OQUYdsTWc90zHehdCaEEVJjPYEDw28EBJo9DHrW
         NrnxaCWr/VqlrbX+xJVqkKCjNrJjPRdINMOgZ8GSMLvXZkx4lcXnxMeZWMuJ4FoXnraE
         g21wNaJmE376wJrE7hTZKXAqG7AqjCmR9X1wRH08f6GyiYW6SlDRcadJOLBfzLiyIaBW
         /rWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JtTWGVOJxNUYD8tjKsiWDFyBjyf3pZVU0c+r2AVQnjM=;
        b=Uqav9JIFjQ7AeJ2eNjbwoVRXcQjoUWMp1eKQ6Q3GLfKfjk1FnyMXXk+IMLeTvb/Czx
         h6eUnRabQ3cicwgs9jpW/e8+4eIh5jyYNaBDzBcOcFQvWb5WREwDwVMloSjNAhzgyIHE
         pajmffAYQ78w9m9W3i+iSwZVm+vtZCh54snKq3L2ylXb4TGhyFXQ1Z6sD+uLfgYN9KLN
         WpLoAXIgysoL8ZC4JInR39SJHOu14AkQYKK0DEvH6AyKy/oTaP4m6P+oLgobdH78W8ZK
         REXoxrRiTKwBl41f8VX7TrfuHDKCdFTtc4ygP8PFDPdp1X4O8qpKdGF5SUZzEeohSM8V
         XRwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VfHskVSd;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JtTWGVOJxNUYD8tjKsiWDFyBjyf3pZVU0c+r2AVQnjM=;
        b=Y/qAVUkp2sSteAGuO+/km7INqS+QNv2A2M+K0MZuMqbY9KxzeFWRYFcb7r1mZubq1i
         owarTq4wcCiLGYuM7mj0gmFrrPAD8Y0TzwNHwU4KgvjM5wufImm99Q6cGcXDylTPYP70
         gzjERfzIJGnY+vgMFqfRUFVWJXLmeN62j0dkadxOhIdc2tiCQK6zeG9lpF9jxqGyZi9R
         7F2GaOWZ6qFCuKrCokZGktnhVyM4upHOiWJE6xWpkLjTC1kY7PgxL/rS63FvEQrWMRqD
         ucZoKXB/Hb7p/OLqYb+BYS9NnWCK/mVoRkoZolPvYayVhVJLJ4dtzFkbHY8aYHJgCOUD
         tnpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JtTWGVOJxNUYD8tjKsiWDFyBjyf3pZVU0c+r2AVQnjM=;
        b=Qnb7UJkJTFeopIK1rHhlvWTzLLlkMl+SPPvw/ZEyn++4oh2o+9Gz/gJv8s51CvgGWm
         tk7AgWe+4RAYsyQpFagzlCro9zpbaPwFkcgx2/F3POPdn3vPTTYSZQT69rO6N/SKy5/Y
         aEZI4ZLtJ05tCwMk7/xGzgB1jHl5onhIB7SqNI/W5WiES5oZvYHPJpMWM9UaPZfBc7cJ
         sHh6AuUOw+COhuS0SqBD9xT+fP8NzXL4Z86Ilg8FAfjnxOvDh6/pIstAjNEKXGOlIRJS
         5+5GyavLuDEwIn4c25APJ2NjRww4g3CRhg0qJWzr5IUTYpVMIZQSIsXz8XsPe8SF4M8L
         hOXg==
X-Gm-Message-State: AOAM533cyu0p/E/NWwbQvkxCsMegHtLzqCmH0GLadpo5csiVx6AvwxQX
	uCxdw5PnAuL26+MDw49+XCw=
X-Google-Smtp-Source: ABdhPJw+DvE16wuPV81K70D7m7wI0OrzgGkVMWBZGjk9aL2ywSRNAGKrUFO7dutmMgNbcZgQwX9f7Q==
X-Received: by 2002:a17:90a:4211:: with SMTP id o17mr5696630pjg.176.1629826267507;
        Tue, 24 Aug 2021 10:31:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:494e:: with SMTP id q14ls8958048pgs.10.gmail; Tue, 24
 Aug 2021 10:31:06 -0700 (PDT)
X-Received: by 2002:a05:6a00:1687:b029:3e0:eb00:108e with SMTP id k7-20020a056a001687b02903e0eb00108emr40176023pfc.16.1629826266880;
        Tue, 24 Aug 2021 10:31:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629826266; cv=none;
        d=google.com; s=arc-20160816;
        b=XLUh07W4kr0gSVwqC8S5wkyQMHvb/1CZprbJ9S+pE5VLcUo+iFN6ZAMNtYoNq9Q2Ou
         WnnD3H7Lidm5MKMi0czg+7ugpR2kIH5TLSKAYTyPxHLl+EqOAw7WUXu4LGhL8hD+nPOS
         4095own04QVwC+xoQCNoGaWBQcdWJCJ+0tmI+NrDedtIgsTYdJqGm1j7xUQmR/pbd7eJ
         1RTfkVZetMnosZrrWHl4aX9+NHifYFc5Bx6R1O8QJiTj23etUImtG0PAGSl3WJGQ/Q4p
         RuklcvqnYb/YIw44GwRtC/UKOyb7hlyAY5ExNfdVL63neJ9y/PwrrjDZUJkrfvCp7iDq
         O8ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Qy5AIG6IAw5l/UjdlTFWswRnp3Bis0SbvNsE5T3Il2w=;
        b=ZtXUkdyAImKhnmmgpcl/CMEsMYOOiOzFVaKHJkV1l851KA0vxxLmlYr1Wl3FWIXkyz
         IvFCJOXnwQBahX/GPxZjpv3ssZmJwV7v6AaakNwyfrxP48427BBpiuNeoUg6WFdyU1du
         IVkIFwX3CPsLtIWdNFV682l/HuZoGkD7waD+BbRdrfjuGeWO3yYWOVydpilHL73aIB1D
         Vzj2b9peQ42ttZkO/OsvnqTy5eDDGYKcWBAw1FYaEJYRongk/TaNEHDohraOWRbLFgnl
         AQ/2mccW6UxmY1I4BdvgeOcPzbrb31/9HL69jrKyrQqZFxUP1HkF09v6CPBxcEP5fO1W
         XBgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VfHskVSd;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com. [2607:f8b0:4864:20::b33])
        by gmr-mx.google.com with ESMTPS id i123si33644pfb.1.2021.08.24.10.31.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 10:31:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33 as permitted sender) client-ip=2607:f8b0:4864:20::b33;
Received: by mail-yb1-xb33.google.com with SMTP id x140so8225126ybe.0
        for <clang-built-linux@googlegroups.com>; Tue, 24 Aug 2021 10:31:06 -0700 (PDT)
X-Received: by 2002:a25:7ac6:: with SMTP id v189mr51220058ybc.485.1629826266324;
 Tue, 24 Aug 2021 10:31:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
 <1706ee8e-c21c-f867-c0be-24814a92b853@redhat.com> <CABCJKufrpx9arM-hfX_bR-efO+13VBMFNBTe4ff036VEZi1LZQ@mail.gmail.com>
 <9349a92d-f2a7-9ee4-64db-98d30eadc505@redhat.com>
In-Reply-To: <9349a92d-f2a7-9ee4-64db-98d30eadc505@redhat.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Aug 2021 10:30:55 -0700
Message-ID: <CABCJKudiTVXOdzxzY1OxF4MMtwNt4XZ_-JJ70dM9H8AEHJmLNw@mail.gmail.com>
Subject: Re: [PATCH v2 00/14] x86: Add support for Clang CFI
To: Tom Stellard <tstellar@redhat.com>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VfHskVSd;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Tue, Aug 24, 2021 at 10:26 AM Tom Stellard <tstellar@redhat.com> wrote:
>
> On 8/23/21 10:20 AM, Sami Tolvanen wrote:
> > On Mon, Aug 23, 2021 at 10:16 AM Tom Stellard <tstellar@redhat.com> wrote:
> >>
> >> On 8/23/21 10:13 AM, 'Sami Tolvanen' via Clang Built Linux wrote:
> >>> This series adds support for Clang's Control-Flow Integrity (CFI)
> >>> checking to x86_64. With CFI, the compiler injects a runtime
> >>> check before each indirect function call to ensure the target is
> >>> a valid function with the correct static type. This restricts
> >>> possible call targets and makes it more difficult for an attacker
> >>> to exploit bugs that allow the modification of stored function
> >>> pointers. For more details, see:
> >>>
> >>>     https://clang.llvm.org/docs/ControlFlowIntegrity.html
> >>>
> >>> Version 2 depends on Clang >=14, where we fixed the issue with
> >>> referencing static functions from inline assembly. Based on the
> >>> feedback for v1, this version also changes the declaration of
> >>> functions that are not callable from C to use an opaque type,
> >>> which stops the compiler from replacing references to them. This
> >>> avoids the need to sprinkle function_nocfi() macros in the kernel
> >>> code.
> >>
> >> How invasive are the changes in clang 14 necessary to make CFI work?
> >> Would it be possible to backport them to LLVM 13?
> >
> > I'm not sure what the LLVM backport policy is, but this specific fix
> > was quite simple:
> >
> > https://reviews.llvm.org/rG7ce1c4da7726
> >
>
> That looks like something we could backport, I filed a bug to track
> the backport: https://bugs.llvm.org/show_bug.cgi?id=51588.

Great, thanks!

> Do you have any concerns about backporting it or do you think it's pretty
> safe?

No concerns, it should be safe to backport.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudiTVXOdzxzY1OxF4MMtwNt4XZ_-JJ70dM9H8AEHJmLNw%40mail.gmail.com.
