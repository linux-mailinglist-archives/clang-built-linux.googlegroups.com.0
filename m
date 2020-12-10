Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV6UZL7AKGQEZOHBC6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2B22D6AE3
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 00:08:08 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id w2sf3178449ote.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 15:08:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607641687; cv=pass;
        d=google.com; s=arc-20160816;
        b=gc5CzbuCWI2uD6Zz4fEhjw5rqUfbqjOtNdReQbflrOTs2Hr2jFe1DMmmLRcXy/DYYD
         7fBbG5rWDu9fCmAfubJKf6ZQPfIBPRxXVi8vLvZU5Hq38GvSmFoXqMxLtGbz6UgndI59
         WdDS9LiV/vPy9EpJYBZ2q0WcR6184jA9AmLyIKFRJ1cv3gOXaKiZ4MrDoJ2yEst+rvBm
         bB1oMGmHNxMsw9vFVrxVqPUrRM9t7Cqz00FwQLiBzuVfskUI0xAg6YQseSXZ6pZCYwEn
         6wUPlBBv9HGFHP1ZpgkKlvgxaiy9C1qV6D/zhrbGV1kZPr8WdghohzADkJ72Nz83xC/F
         nXKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2qj3bwkN9UMUZEZMmEI9Wq+BxDCXIs54qCAzG5ln1vU=;
        b=aM8Gu3Nxvfzy4ukeGIvidAV379ggeL0c/f05L/I9mILZu1bWdZWVXpt9sM5a5MZcYb
         4Ow5P9CaEBj1aInn+zqXNxIJYT0ANlUkLzf10/TUP3i833v/sPghZuC/fkyRTjgFhGiK
         7VEVmouLN4kMfvFUU1EskErDN4Hmdl0+KQasNIWiOPCYlzlHWhJP1wowXziHKNT4LeXt
         osKwUMfLKbk6T+3ima3npmLpC4li4IAvxqzdaQxZ8TVVRfz9BfxxCyHhLtR04yrZMsiv
         Phxx1t+z9vpC5g8fcABji4CpgV0A/gFKisRI+56SweZQbXSEi0SWU9+Uo3qTheY84ZHi
         NCFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="M/rjtOio";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2qj3bwkN9UMUZEZMmEI9Wq+BxDCXIs54qCAzG5ln1vU=;
        b=Eeru0URP+ztfLvYRLwSAp1YG7inl3Ejv29KQJMZ4+u11C4VZgPp2UeEDUvmWRbVS11
         nYkWF+Uy/w2qTQNyu6txAcIR936oFl+0D7iqn7qdQyDrVylF/u66aAWnKFyvZ0nmhwRm
         y0b152+At7Bvzyv/rx2YYgFeAXFVck+TVpsyuPg3YKq3HI06BpR2q6nwg355LSnbCoW7
         ribOHyw6zy2eQfTYJooyHZ61OTKx2f0GFzA015ZD25YykcUsVcy0wLcbm994ZQVKKfXh
         mBqTGmgOAZnq1sc2w77UFFAzdAsMjNcPYNpqJCH77Ax2AzXXUufmJ+hhrvYhwEJLZJp8
         5NNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2qj3bwkN9UMUZEZMmEI9Wq+BxDCXIs54qCAzG5ln1vU=;
        b=sDYOkf8xkgo/bCmdQOJakofGZ3SWjfNic/wqQjlIK5MdHhJs28Wlyhxo6IoK05c/R4
         eGTBTJrptKVv6p7eIoAeE/lPDIwOX1kTRl4ZUFo9HaIeMKm6LKoSu2mNahw1r4QqXW9T
         xrW+eL9h3j2IsJZKXI8cuRtrZBlsWtcS6DgKLbpK4cBO86S/V/FD90/QLHbRAKWL/AW0
         Mm23s3RYsTf4PxS+Rh9xV0gOw/rd38QtHNLeZVf8Tf6clFRYkqiIJ5kxfJUMz9Il9qw7
         pGmsRa7acdHVwJYQBkKcZ65uUn5FnlvYNpBNXKvRA1RF+g//rm0HxQ4XnvAJSa/R2hE1
         TZUw==
X-Gm-Message-State: AOAM533E1DwNIYP+D+ka81VsvdObxA/3qLkLDgMNR7oczR/rpP3/FKMC
	uBrWfpzCV68M06h2SxkMET0=
X-Google-Smtp-Source: ABdhPJxO0kP6Vb6kq1oM79qWpQBT61VuNNNy4TQJkGFMkf+HCpoT3LuSKT5pIxUjpYAvdppngNmpBw==
X-Received: by 2002:a05:6830:1b7b:: with SMTP id d27mr8023947ote.132.1607641687149;
        Thu, 10 Dec 2020 15:08:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5e07:: with SMTP id d7ls1967627oti.9.gmail; Thu, 10 Dec
 2020 15:08:06 -0800 (PST)
X-Received: by 2002:a05:6830:1257:: with SMTP id s23mr4322915otp.69.1607641686674;
        Thu, 10 Dec 2020 15:08:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607641686; cv=none;
        d=google.com; s=arc-20160816;
        b=D/ww17DIv8nMFxQ9qDZpQI9xvpGBhJZEOFhATzMX3p4DWhG1msIAImPXnzSSVCodSz
         lCQzOVwzQRYCWP/WJ5eHso39i7yNKt1wHZKLBYORAbW8Ij/8DJd3haks8+pyii2WE8ty
         MK6XRuwruWEvCuBe54omlH+t5tGsqASVsyhoGuvCrPIuDI27/83z5gtURNfbQjyg5/9Y
         8KFuwxZTA3qmp2tymy+4s/KwYv6pmTCu2KwY+zFBWZ2WzB+mZd00VEPpyUUmuCwxJlBo
         o2xkIU9m2tSnt6udAWVimdBnqi6e0WEUYhONI9M8gFGFU442KEcQKGtpUa2s1kOVwSay
         7QXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NP1eu7QDXdN/1YqCh4O4EOd9zppr5PbDxmIdIe+pjSA=;
        b=t+SYHAAWOj3o3VyTOTZLlOlJrmNcgcM0fsbatk+QqsFipbzmE9/4p0hbNjGSbJTybY
         LUusBPcnrNp9NwUHS15qHubdkgvpUBFMKw58fzW2usjmLLmhXLGPBwuuMWAasiz28TVH
         asohgxtxrstGUpokjGnBGSdVkoGGZmknyIiSa+25vf7p8c9tav7gDctLjTV3yGq50vDO
         qhaNwlI3rVHcR9nRqZ3m3ZCP/sgU6QSUpcbku3li0tz2LNWAXEcnyaa2NMrueRQOiVGr
         jjBnFbOSFbCqbL2d28/7FsBnPqSPXm35xoWHktlLwCwEi5qFmqT1UE64OsSTrNVT+pR8
         mKxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="M/rjtOio";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id p17si427135oot.0.2020.12.10.15.08.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 15:08:06 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id t7so5617404pfh.7
        for <clang-built-linux@googlegroups.com>; Thu, 10 Dec 2020 15:08:06 -0800 (PST)
X-Received: by 2002:a17:90b:1b05:: with SMTP id nu5mr9949695pjb.101.1607641685861;
 Thu, 10 Dec 2020 15:08:05 -0800 (PST)
MIME-Version: 1.0
References: <20201203221005.2813159-1-adelg@google.com>
In-Reply-To: <20201203221005.2813159-1-adelg@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Dec 2020 15:07:53 -0800
Message-ID: <CAKwvOdk6=TgL+f2-WvE7tsK0rN1XQ+NdXmeJfDkLsa8xPmgipA@mail.gmail.com>
Subject: Re: [PATCH] selftests: propagate CC to selftest submakes
To: Andrew Delgadillo <adelg@google.com>
Cc: Shuah Khan <shuah@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="M/rjtOio";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Thu, Dec 3, 2020 at 2:10 PM Andrew Delgadillo <adelg@google.com> wrote:
>
> lib.mk defaults to gcc when CC is not set. When building selftests
> as part of a kernel compilation, MAKEFLAGS is cleared to allow implicit
> build rules to be used. This has the side-effect of clearing the CC
> variable, which will cause selftests to be built with gcc regardless of
> if we are using gcc or clang. To remedy this, propagate the CC variable
> when clearing makeflags to ensure the correct compiler is used.
>
> Signed-off-by: Andrew Delgadillo <adelg@google.com>

Hi Andrew, thanks for the patch. Can you walk me through how to build
the selftests?

Documentation/dev-tools/kselftest.rst says:
$ make -C tools/testing/selftests

And if I do:
$ make CC=clang defconfig
$ make CC=clang -C tools/testing/selftests -j

I observe a spew of errors.  If I apply your patch and rerun the
above, I see what looks like the same spew of errors.  Am I "holding
it wrong" or could the docs use a refresh?

> ---
>  tools/testing/selftests/Makefile | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
> index d9c283503159..a4dd6d7e8276 100644
> --- a/tools/testing/selftests/Makefile
> +++ b/tools/testing/selftests/Makefile
> @@ -90,10 +90,12 @@ FORCE_TARGETS ?=
>
>  # Clear LDFLAGS and MAKEFLAGS when implicit rules are missing.  This provides
>  # implicit rules to sub-test Makefiles which avoids build failures in test
> -# Makefile that don't have explicit build rules.
> +# Makefile that don't have explicit build rules. Since lib.mk defaults to
> +# using gcc for compilation when the CC variable is not set, we propagate the
> +# CC variable so if clang is being used, selftests will build with clang.
>  ifeq (,$(LINK.c))
>  override LDFLAGS =
> -override MAKEFLAGS =
> +override MAKEFLAGS = CC=$(CC)
>  endif
>
>  # Append kselftest to KBUILD_OUTPUT and O to avoid cluttering
> --
> 2.29.2.576.ga3fc446d84-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk6%3DTgL%2Bf2-WvE7tsK0rN1XQ%2BNdXmeJfDkLsa8xPmgipA%40mail.gmail.com.
