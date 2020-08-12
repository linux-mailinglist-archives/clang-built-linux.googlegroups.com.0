Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF4O2H4QKGQEGRF7KRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDAD242F8A
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 21:46:33 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id y11sf2615404pfq.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 12:46:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597261592; cv=pass;
        d=google.com; s=arc-20160816;
        b=fhxz+dEKGUaHs5oPg+YsHy8t8I3FYGl9uG8GJTeXy5DdiOCj9sJpos7PRhPsMl56Hj
         Qm12eoZUSaI6yEyquAU3NBOPT8xNU5fygQ7aBgWMeYUIN4XBYqe+CoVQ6kPX31tiS2te
         zgqV8rNuHtk2V7OZjzvnFy7yPgU1pTch6eBJGmb3Z1UVlZs6rSBpyAp/lLhFSnJkOZOm
         sCtO7GHSpCOkc7PcD1QxuCli7Ua462PyG7muDEBXw89cyt9oqjTJ2CXi8oEs/wzkcjSA
         e5dTMZc2UlFtLXKMvuPhdVkMxBLw+cZc7M+yhFPXKWy32cx8kus/t4ZwdNqrh0BF9POl
         OGfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hutvCwblXxTki/+uL36CQ9f4mMCGk6vp6yAkBualmP8=;
        b=Z47cRpy+M9tRgVw62cgkWckDuhuwVLBnldxUesgv+3ZabQOKn3USnuJy+m5FS4sF9J
         sl+OJck5w57tcoQr6af24oy1K1iSqMyUcUHS7zbzRmOr495NcToXS9E4SNARV0D7BYUE
         /tGFK/k17QyaZSjViJ2U10TXTr1Ej65mHeYrczJIL5Gm9OGJZB3UUx4mWacOp/0SjfyB
         jevYLtQioYFP3HuN/MaU060e3HPQkA/q6aBwyPA6mQOVeUxmwcUVjpjvqB3rC4pLyYJA
         IeDBkN5+QSsNvoRBuDZWBD6vuVJXke+QnnLp5zucruOC51IIn88HWs469txrEDuEu1gH
         dfvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TjMYkv3n;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hutvCwblXxTki/+uL36CQ9f4mMCGk6vp6yAkBualmP8=;
        b=QS1FXyXPdHDLiLlymmOOq5Mci3KSvygvd48TrE1al0MwbnIqwCyseVr1wmNbSHfZCu
         1HAgzSTV7MFr0GAFGJ8wfZMbruebesHsbKZf0Pr5TaUJiNob5EXp7doWLxTiTA8cnkHI
         jkgzYBitfHx5J2g69tTEs5dOWErywrchW/nCw+45Gmgvr0x18GfLRgznxY8wm2e7uWFd
         YZUakXbiRaVmLx4CPa2IZqmW6qGioG1oPwYPLoson0jXLsUSCCyZ9fAK5qRLWyKGLqwn
         sId6PgpoL8e6UxsQiDLHHW0MnDSsnc8+hhyTwbS7jKuGu8+y7eMeGpOAY0b1hbgpwHIi
         T5iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hutvCwblXxTki/+uL36CQ9f4mMCGk6vp6yAkBualmP8=;
        b=XsW+nH6w9kVoUqYoGIRPkdGo2il1/WQ+ws8w//ae7g8uiFO2l1vFFdcNf/a+8LeUrr
         +4bk0ZvdWbg9Y+PdrsfCXLX1yNo4fwu1PTerSk3PeeMOxlA4mIrX84evZf5lGgIJDKtX
         du52JjWb/QqCP0/sSkZA/auocy3Mqrw32oRVcZ6cJ/8IEXzbxuZAG1mi17qwVtOFK/V2
         CAVE4pJNwnELfiTnxwR41FnnfkO6jOkEMSmJQWch56jPh8F1pDaQcjIzOxo5neumMr8r
         Zjx4D2du6r9lqwZXJ1chFgLUL+2rYmSPy+ZqWJpUyHKCluRxGcl43khXkjTUN8+4qIqE
         e02A==
X-Gm-Message-State: AOAM532q96YV4RzyLwitpyrz6SglPqhnHIGyxkeD91wpQ+oBFWnVfy0Q
	cGo9OMUT+ciPqkGnpbVRW10=
X-Google-Smtp-Source: ABdhPJxgYqaZGxVH5uNg8OmQdKUykD3g0OLffkahUqCkE39rWDYn6MFHNqj0m65AGgsxufQa6ZxY+w==
X-Received: by 2002:a63:5004:: with SMTP id e4mr697084pgb.208.1597261591970;
        Wed, 12 Aug 2020 12:46:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8cc7:: with SMTP id m190ls1161180pfd.2.gmail; Wed, 12
 Aug 2020 12:46:31 -0700 (PDT)
X-Received: by 2002:a62:8081:: with SMTP id j123mr1121840pfd.80.1597261591569;
        Wed, 12 Aug 2020 12:46:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597261591; cv=none;
        d=google.com; s=arc-20160816;
        b=OiKkgxJc1Fl0U9BSiYh+QxkHDmvq83nRQv6a0M05bfj1F3q+YDLSXaqXEEm3bElsS3
         rXgxXE0Z/f7Mmb5Fq3qH1NUseCVXhuNOzwkv+OlAEIVHq7kOpAqMvHCiWvFiMNh5Vn6H
         I3tITFYYGCelF7VULnFdXl/eIrV0tuo68L71buuGTtzI/EqIfIaPp0JHW6TypFbXeUlI
         5rsMIFsYd6KJMplQrPCnQpfroSPMDsvJxsxNu2v3rLNCcF3fTJs6+HEutMuVOb0hBtOC
         oWwjqsoiiJIAj7DHiEoUNT65yH4yG62ivd2D8B2Cd39l+9XGyj9Sk1p5meLdTuYeDmwK
         7+0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gS5bhrPUyUt3mL45GiZphtzmwWSWTmQ9is/6Z4H+9UY=;
        b=pYT5AY/gYqXGUKGC0kFpzCCVwkZsVCllzQ+Nxt4r3w3oSx9QLEz6UwEbK86wAfP1Mi
         PlJ+FfsMnIKqLD0Ij17IzxcmW7DrkW6DMI9x/Z+t0dh1RdEGTj15TqOIodXXuYbIL7es
         fD0EI3/WclFsAq9iBY8kml4lZi6F8F8kw5NybTil0uOjuMi97iMHBWM6PC2ja03Iv8eo
         7MN0TEqQRt8MJpDK2lWo+Lcx+VlRnAAqbNICNaZADP770RrMrT5evNTzxWCfvJuxlen6
         gI5PaJTrE4OGnEv9PGkLG/faB/41wPv6X7aAcfhzM3bPAyeNVJn5kJg7LX8P2xYma5jT
         gA0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TjMYkv3n;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id t13si186246plr.0.2020.08.12.12.46.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Aug 2020 12:46:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id u10so1566067plr.7
        for <clang-built-linux@googlegroups.com>; Wed, 12 Aug 2020 12:46:31 -0700 (PDT)
X-Received: by 2002:a17:90a:3ad1:: with SMTP id b75mr1487607pjc.25.1597261591089;
 Wed, 12 Aug 2020 12:46:31 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000008f6bc05acb36684@google.com>
In-Reply-To: <00000000000008f6bc05acb36684@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 Aug 2020 12:46:20 -0700
Message-ID: <CAKwvOdkVt4Odz9j2iMnrMsGP9VZx7Fz2tr13Q0jpgjLdes36vQ@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - Aug 12, 2020
To: Vasily Gorbik <gor@linux.ibm.com>, iii@linux.ibm.com, uweigand@de.ibm.com
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	clang linux fellowship <clang-linux-fellowship@google.com>, Android-LLVM <android-llvm@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TjMYkv3n;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

+ Vasily, Ilya, and Ulrich

(I added a note that i386 is now buildable+bootable as of the 5.9
merge window, which opened since last meeting).

On Wed, Aug 12, 2020 at 12:43 PM <ndesaulniers@google.com> wrote:
>
> http://go/clang-built-linux-notes
> Meeting: Hangouts Meet
>
> Aug 12, 2020
>
> Plumbers
>
> Tentatively Thursday Aug 27 7am PDT
>
> This is still subject to change
>
> 11 talks proposed; likely will cut this down and publish the MC soon.
> BoF proposed in addition to MC, both accepted.
>
> i386 now buildable+bootable as of 5.9!
>
> https://github.com/ClangBuiltLinux/linux/issues/194
>
> -Wa,-mrelax-relocations=no related boot failures on x86_64
>
> https://github.com/ClangBuiltLinux/linux/issues/1121
>
> Performance wins targeting x86_64
>
> https://reviews.llvm.org/D85257
> https://reviews.llvm.org/D85807
>
> Clang-tidy / clang-build patches
>
> https://lore.kernel.org/lkml/20200812173958.2307251-1-masahiroy@kernel.org/T/#t
>
> S390
>
> Issues: https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aopen+is%3Aissue+label%3A%22%5BARCH%5D+s390%22
> CI: https://github.com/ClangBuiltLinux/continuous-integration/issues/232
> Dropped buildroot support: https://github.com/buildroot/buildroot/commit/b24c3215c13b0f25979c744af4b2e58359b5723b
> Initial build in CI: https://github.com/ClangBuiltLinux/continuous-integration/pull/229
>
> Fixed: https://github.com/ClangBuiltLinux/continuous-integration/issues/152
>
> Linuxone community cloud: https://developer.ibm.com/components/ibm-linuxone/gettingstarted/
>
> Preferred to trying to get a machine for development.
>
> KernelCI has debootstrap images we might be able to use instead of buildroot.
> Thanks for guests Ulrich Weigand, Vasily Gorbik, and Ilya Leoshkevich (all from IBM in Germany) for attending and support.
>
>
> ________________________________
>
> Sent by http://go/sendnotes



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkVt4Odz9j2iMnrMsGP9VZx7Fz2tr13Q0jpgjLdes36vQ%40mail.gmail.com.
