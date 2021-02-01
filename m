Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3PA4GAAMGQEQ5ST4XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 235E530B1FB
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 22:19:42 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id r10sf9277249ooh.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 13:19:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612214381; cv=pass;
        d=google.com; s=arc-20160816;
        b=eC/1p/RxKbmps7+ge28d3wCPIHtk3cAXjSFX9/ha7EGwywo88eCr09efX47Au6FAcJ
         lyctUOwO6uWVQLdOhfMZC0AJPQzDv7gl92Mlyvi+s+dAU0zG22ptsCPWF1ZD6m1LQqU9
         6WlvZTaIarneK2slVGNO1HYEDA01NLQV9uzBVypKaFOnoHNCsxvkIKNY/ZTqsrMrburV
         SkJGU1zkRtd7zvbZ4JS+L5sblGwN4Pjq77foUGCFcp+Sc4gFUBEqUSkvl7kPN+oNZfJI
         QXwUlhE3bqNY2jMb8qA6e9zPcDUOveiKgHswmQfIsECfwpGvdvPPZxjbu8Z3F6ko54If
         VsIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=23HJH04/9vhGfoahgscn9qdUJzJrFTlXaYjY4OcnyBE=;
        b=M0iBvFcaZo9XOOJvEfAnfS/LJKXBJQiYWQW6QGRGj9Qh046MUF3uZNeQa8hX99PFfP
         PfhBKijN475hyZwQlZhEHowUJ1UF0yjpD8QGCAn+qq1/P2BvvRKbEHeAt+BllKvMtbxF
         ZDfen7fneWEQ0Cr1vFtdHoUaBcQ6aXfWZSGJ5UnWprlIjrpjON+Dh54XrTUhdambfq1f
         nld2AzuZrq1NOMyGuuC+pWMR5AfzxiPKqYPbQTbHlCOn7kOYO4UwRGwM/2AB8Duqo/WG
         Uj42HQ0PROZX1l0WDJRgJfH0kQIoZ/c/Ww68B2ls+cchNtuygwQgcy8U7Jj/+JLj27Mk
         PBZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="kLfwiB/v";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=23HJH04/9vhGfoahgscn9qdUJzJrFTlXaYjY4OcnyBE=;
        b=I5puF4iZp1hs0LVcyzd4LMuP//NCIXqXdByq23jHrJvC+HvpEZYlSYaOz36AEKMeD+
         GXyAbClI6imAJzwK4FKXU1+VExi591KLYL4c1S7SZwYz1TbZpGZr0sALoA8UIezsLf2w
         FK83mIx7jG9AJ1sjPKRRCQS3M7ZZwuXt7fjijiSnklD8S9s9WrvqL3LFaaWXMyMlXMkk
         LxTiCTQsmcPUzKKZ7+m+VLMswvJI1vnG3WL8p8fAIyctnZS9enokTqF/EZHO5wa0GMUb
         Wn0+p4manvkiVW5xU+uQw5FfTVtONtBU01HDlQwlFgPtvZc/biXfqCFqUONf72SRXlQ7
         plzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=23HJH04/9vhGfoahgscn9qdUJzJrFTlXaYjY4OcnyBE=;
        b=MDLe/PcPqqQNNL6klPOjf9uBzqUqUhCrbqizQqA9N2fEVO3RDT4tBdLYtg9oL+Hrgc
         agcaUQVpL9mT7QUmkyGBqHVLqCsnQZicSmdXXV8JlMv8QPPfG/UkFThf2E6FndwcT63W
         a1UT7K3dCllyj0o3Pso2qmELoE5dkPqyK2LoZU5u1wXhqKv/+2AqKmJvpKNRFOzSBwyZ
         Trog9r5WxD9bEqC7LHx/YCOWMdpIcA9OsNUU1mCVOeO6bnryL3de0ztxehS9esajvbI0
         7EOp8fmQ4/Kl88P/swgDAsYR0FIKDUzcqyb8btXPFsWC3DYRMjlgVLy7aYWCteqKKVOf
         7Tww==
X-Gm-Message-State: AOAM531Dx3VKiSikPpAj8DyYOnDMov1rrV3D9PjrwKpavdT8fJgZb+KG
	8QrhmlkOIeRs1fM5nY3pfmU=
X-Google-Smtp-Source: ABdhPJxSGu7SkXfNDq9FNabnzr9zyvuyybO5DPQUdNo3d4qr1gE0BxVtlxYlKH5Lv8q66CHJR/rqRQ==
X-Received: by 2002:aca:afd7:: with SMTP id y206mr560223oie.51.1612214381180;
        Mon, 01 Feb 2021 13:19:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:fd82:: with SMTP id b124ls4363078oii.3.gmail; Mon, 01
 Feb 2021 13:19:40 -0800 (PST)
X-Received: by 2002:aca:de46:: with SMTP id v67mr585369oig.126.1612214380804;
        Mon, 01 Feb 2021 13:19:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612214380; cv=none;
        d=google.com; s=arc-20160816;
        b=CdShG8EeyoLKXNK93zFPCJXp8vccnpnvqb7QG6RfHkWtfXWofn16hhZGX56oDnDaf+
         QW/2QC5FavQ1veeZEgXQlrPm7FRFJaQ0zn0wbFtR5QaamFQc/zHEyWrVQrtyauynDRh4
         ZPCMBLZM58VrIMzU3trGn+qcaqyTlmUb7E4lZhzKgW9nhbodjCYqEopc8ho8fvnlHIYd
         u/V4ePVAfLWF9Lia5r+xZ6caTI5WlPr/IO3QPw9xWuwxsv8EXv4JhLSflqWM2CZ6UpYT
         7T4rzaFilgfdC5LF+rb5qhIkUcK71yMiGW9XP5jRm25uGzTypXhQIfYAE/EqOGCU3oVw
         72Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g8jtZLhRFdzkVUeBL0lsmMZKZUsxtNa2zuw8k7lHAMs=;
        b=iP0m7YTfuKFkBsdygH2DTrdSHVFGiNpgNXTJgky2xKSFP5fbN7BCm62iZQV6vo+Ld/
         XTuY6Nq2kJy0363nFd95//1ffaKkETDJJwTs/Q5CPEKT6RUb+oBgqJ1+XjRxpp1lBW/o
         W6MdJSMsJX0reGyqTFw3UpSWhBqaH8zX0moWYjbTgkRc3xdFaKQhfsP/MNePn6k8u1sG
         SAsLg5r46J164WzfuI+VmqqGntfYHbUB8EZsSk7to0X8fNu9r92qECP4OskNtNnSo0r5
         iaWLD3GE0oEFqKqAWEFaOI5kPM8/ddNC+oIpXLCjVXvn7vyyjJ7twyB3zUjTMUPPOthp
         1qLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="kLfwiB/v";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id a188si1041324oob.1.2021.02.01.13.19.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 13:19:40 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id c132so12983047pga.3
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 13:19:40 -0800 (PST)
X-Received: by 2002:a65:4201:: with SMTP id c1mr18706171pgq.10.1612214380038;
 Mon, 01 Feb 2021 13:19:40 -0800 (PST)
MIME-Version: 1.0
References: <20210129212009.GA2659554@localhost> <CAK8P3a19=Zdni0G2LQE58rrdgJ18zNoefio6GwVg36m5B0Eqdg@mail.gmail.com>
In-Reply-To: <CAK8P3a19=Zdni0G2LQE58rrdgJ18zNoefio6GwVg36m5B0Eqdg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 1 Feb 2021 13:19:29 -0800
Message-ID: <CAKwvOdm3sFE=hpai0NLJ_UAYNG2RO2mZGY33uHqmFgZm7fy_KQ@mail.gmail.com>
Subject: Re: Minimum supported version of LLVM
To: Arnd Bergmann <arnd@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Miguel Ojeda <ojeda@kernel.org>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>, 
	Dmitry Vyukov <dvyukov@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Ilie Halip <ilie.halip@gmail.com>, kernelci@groups.io, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="kLfwiB/v";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Jan 29, 2021 at 3:36 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> I'm actually more worried about the reverse: as there is six year
> long-term support for kernels, do we expect to be able to build
> the oldest kernel with the latest version of llvm at the end of that?
>
> E.g. would a linux-5.4 that today can be built with clang-8 through
> clang-12 allow being built with clang-8 through clang-21 at the
> end of its life in 2025, or do we assume that LTS kernel users also
> have to use old compilers?

I would think so.  The newer compiler should always be better or an
improvement.  Can you think of a case where an old compiler must be
used for older versions of kernel sources?  Stable has said they will
always accept patches for newer toolchain support.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm3sFE%3Dhpai0NLJ_UAYNG2RO2mZGY33uHqmFgZm7fy_KQ%40mail.gmail.com.
