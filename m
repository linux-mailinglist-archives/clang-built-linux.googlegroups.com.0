Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBVEC3T4AKGQENTN5TNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 547472282CF
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 16:53:10 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id w4sf894162pfq.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 07:53:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595343189; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ram25qpz8BXk7MSBsyMDgKfae23YKJYf2b243lkHBlnkr7fzB77BsGhEVC7g8Is13Y
         ugD3WJCRuN3mF7kFnpxpb4EKSNJlO8H/5N5ddzjNYDVefZHe5ZBobIdB18Dr6K5Q20uH
         FrdY9WkatsJrBB0jYrlUnEnGbNSrbraoQuSILJhqV8j/dxHJjj59eX+WpZmNCgm4t8gy
         JC5GDHw8py/oRULedDAoCj5X+nD6iCJBzQpxOyV8lUSHu6is8psThnAqdhwWEUEXkIRc
         2uPQXCQbqt59BaKxEzOkF/Hn86F9wLW2J54TNNzMeRYrNM1yFWExdAeGLwslpY8jJeqN
         yqDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=4bBzhY4TjFhuX4qMwQLOdRJtIb8FoJfJVN2irygUeVM=;
        b=oZFahvxw7QF3S1JeHcOsVbL9ruF0NW2RtWAusQaLv8UxoPzmi1CTGgTwxpSAvnTN4V
         RX5TMvO0Y2GeE54av9zC2kyqwm14DurQCzaRhYzPqztTJxGnyo9yK3RQJvqve3uUcBbV
         +1+xdTFPVkmfFYylVlYN7eGmNxnrDlX17kYHeB+wVyCH9268Rj99PZt3LBiPdwTu5lUH
         R8rddhYdNrLyYRD+X+XOLjsmNU62pVYxIFtnQGTliCn/pkTnoJkx+TABt6I7o0uqlTU8
         0wiyszxYdsJBrZZEk7e8uH4FDQpFRglvLo41k24bz1kPPpAUdVPsbBxoztP3SEMqOe+C
         jPvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b4fbwZfv;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4bBzhY4TjFhuX4qMwQLOdRJtIb8FoJfJVN2irygUeVM=;
        b=ocYu0W4bQZZ6dsohg74O17J3YsWAvc1+ClHVfCo4790wDFB+jIFPi6zXaAIPLF/t8W
         ikgflBtsTHPf3tUvoFZvAF1lTwzKMt8n1n9Nq1UqUiSDfRY39x/xQWZcnc3jwwtFrVtK
         s3dSJUKxS5m1YRHH/gI5dykBgEwel8AwyyzWIipPAKGMPnmNiLKmKiP9ValpQws3K2+d
         QupzZhTbMTQnxGGnyxCVEgcBWsYmKN9hwQst/jp2UvPQDHDOk44rNVJ3fRjjj6bcE0g5
         DfQabmN+Ymw9Uowg1fcntpcWG7DH56nZW3tFobJS7la6LUHqY5RBP2ZwWBmfBbi3Jcos
         VWpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4bBzhY4TjFhuX4qMwQLOdRJtIb8FoJfJVN2irygUeVM=;
        b=IXshLw/3lwsgdfqUVW9cvESMs6NHABmBII7hXQBTrdkhWgmoIuihZ+ykR7OSDMYjHx
         02BD4V/qv1aK+A9QsJdVKSmvpgD4K1yPqEfDAr6RVEvF0CECggMrL1IQl9DM5ptk+8UZ
         gf+/3Unc6ouGPR6049wylv2TesJPJcG4inzIUVoWuQkyU1nbgiF29zlu9jCoiAUsNJzr
         26i6CXTxc86EIDDB9O+lLDGNzJBAy7DwafCMSlV6qyzXM4PQo00US7aKCwhtz5YAXXEI
         FdZEyvzaM/4RkThYdOMQFxnfOrWJeN7BG7nivFEmpsUXBe/rZw/oSG+33oVggzAjgB6l
         sR2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4bBzhY4TjFhuX4qMwQLOdRJtIb8FoJfJVN2irygUeVM=;
        b=bDCO3Zzu/2jbAqcshNo1smGHxdymijEaQwpxdPkxZQw6RGd1+aU5NsSTBK/Hd35xtc
         xOs8VuFryYuZn9J7bAbPPTfQ0BRGO4q2mee9qBrEMI6yOUcmSqYzFEaNggj+2rjGjrJm
         1uLGUoKHuERPUME7D2geaMohp7KjCleoo7zAg6fR8B6EFKUts2TUc8j3m1JGjcw1/pNR
         f1rbiwmqhVipr00IcTRVdNTwlSNl8+X6UtUD/T5r8Fwv2fWMWgsSUFAPx+QZHU55Ne3i
         cznG3naEqlxmMZG4X+L35FbLcQdi1LodS94YKoiN8S5okVc1GvCw7Nb8Xr8L7cV7e1Z8
         UBaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532q3qF2wJbKRdvtP+hkcAgpyAza9B/ccfiV1trhQzZ4vPDMi2j/
	tcbycCq1PAkaq4wEy2+4Ixg=
X-Google-Smtp-Source: ABdhPJz15sNM+KQ2JddxGW6pB/YlFwTKgV+flkqHauJQbI/3fryH/lT5RVQG5TVacGsXhU+fTB0O9Q==
X-Received: by 2002:a17:902:a506:: with SMTP id s6mr12658621plq.214.1595343188980;
        Tue, 21 Jul 2020 07:53:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7e97:: with SMTP id z145ls5892673pfc.4.gmail; Tue, 21
 Jul 2020 07:53:08 -0700 (PDT)
X-Received: by 2002:a63:d44e:: with SMTP id i14mr23230814pgj.280.1595343188450;
        Tue, 21 Jul 2020 07:53:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595343188; cv=none;
        d=google.com; s=arc-20160816;
        b=rgimV1VNTUI+pjvuGJ7HHkb0PCgYz/RERjv/vShrRtW5CNBAlzjL5AJ7nctjGJHAEq
         x/fqMT5rlprlo5T9Cok7YeJF8a5mSKSqo9mPiRov73O67DElIHf1umM8HFj9DAbYn4tW
         joTaXTvhyzkdaml4jkoaZJLPQo4XWo32J6rbw0VX3cgduzWU6UitruXiGkq5K6lxmtFs
         NGyIpSZV/zE625uA2RliRqAdBLvE0jHMwEhFUpZ+igISfgt3MlMLYSOZ3ALDsStQOq/y
         wJFGbwS4Ae2UnkbXj9Uchy3eBLJg0oxfdkNnvssGx9Y0BHa9FHj3TfbnFhh6vNdz1Wjp
         kdzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gefT0usPwNpk++e6uaRtXlpKcI6kuzb4kMCCKqrFfP8=;
        b=xhsPKwhVSHEH9RRNgKKsSIG5bGsc9X7MNUXVYblvoC+uLGYIyUXWpcUkSzsvoK9hcM
         qqZahXMmhjeyzs+3ewuEcx4ELdDevfjYKFKbNf8UKO3ZLA+7NWDJJPPEXIA8QDfH6Rhw
         L2ByKC0FxLSgKnriMYXaFOOBNX2xn+4+bfVa2/34MlJ99OS97xNfbDSneEvSHBNFCUH3
         hTDX7yI7hy01HyF7nXQh+KMgnVpLMEYFrwRVbkDSTn4+Jn4RkPT6Vm3PZvqdol0lI3Cb
         Mcah9xpXg/hZNpWLfQSVxrfM/dkDTvSaKXHlFtPU7e/EXznKa6SYP7knW9yU+MhCzlrQ
         cjuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b4fbwZfv;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com. [2607:f8b0:4864:20::142])
        by gmr-mx.google.com with ESMTPS id d5si82080pjj.1.2020.07.21.07.53.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 07:53:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) client-ip=2607:f8b0:4864:20::142;
Received: by mail-il1-x142.google.com with SMTP id p15so16566297ilh.13
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jul 2020 07:53:08 -0700 (PDT)
X-Received: by 2002:a92:dc09:: with SMTP id t9mr29451057iln.226.1595343187823;
 Tue, 21 Jul 2020 07:53:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200721041940.4029552-1-maskray@google.com> <20200721104035.GC1676612@kroah.com>
In-Reply-To: <20200721104035.GC1676612@kroah.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 21 Jul 2020 16:52:56 +0200
Message-ID: <CA+icZUW9JhZEEcXfL5bid7+M-Qtw22XzSm2x-JxW1bU15HJ6sA@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang cross compilation
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Fangrui Song <maskray@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, stable@vger.kernel.org, 
	Jian Cai <jiancai@google.com>, Bill Wendling <morbo@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=b4fbwZfv;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jul 21, 2020 at 12:40 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Mon, Jul 20, 2020 at 09:19:38PM -0700, Fangrui Song wrote:
> > When CROSS_COMPILE is set (e.g. aarch64-linux-gnu-), if
> > $(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-elfedit,
> > GCC_TOOLCHAIN_DIR will be set to /usr/bin/.  --prefix= will be set to
> > /usr/bin/ and Clang as of 11 will search for both
> > $(prefix)aarch64-linux-gnu-$needle and $(prefix)$needle.
> >
> > GCC searchs for $(prefix)aarch64-linux-gnu/$version/$needle,
> > $(prefix)aarch64-linux-gnu/$needle and $(prefix)$needle. In practice,
> > $(prefix)aarch64-linux-gnu/$needle rarely contains executables.
> >
> > To better model how GCC's -B/--prefix takes in effect in practice, newer
> > Clang (since
> > https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90)
> > only searches for $(prefix)$needle. Currently it will find /usr/bin/as
> > instead of /usr/bin/aarch64-linux-gnu-as.
> >
> > Set --prefix= to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
> > (/usr/bin/aarch64-linux-gnu-) so that newer Clang can find the
> > appropriate cross compiling GNU as (when -no-integrated-as is in
> > effect).
> >
> > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > Signed-off-by: Fangrui Song <maskray@google.com>
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1099
> > ---
> > Changes in v2:
> > * Updated description to add tags and the llvm-project commit link.
> > * Fixed a typo.
>
>
> <formletter>
>
> This is not the correct way to submit patches for inclusion in the
> stable kernel tree.  Please read:
>     https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
> for how to do this properly.
>
> </formletter>
>

Hi Fangrui,

your patch needs to be accepted first in Linus tree - among other
things to have a unique commit-id for inclusion into any affected
Linux-stable trees.

Regards,
- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW9JhZEEcXfL5bid7%2BM-Qtw22XzSm2x-JxW1bU15HJ6sA%40mail.gmail.com.
