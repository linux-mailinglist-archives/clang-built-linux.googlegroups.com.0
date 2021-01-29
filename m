Return-Path: <clang-built-linux+bncBDYJPJO25UGBBN4O2KAAMGQEQG6LNZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id A85AA308FC2
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 23:07:52 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id w15sf7375856pgt.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 14:07:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611958071; cv=pass;
        d=google.com; s=arc-20160816;
        b=B5ZMv1qBx6tLwxu84qFGJ8YFznnIh+/+2w6iqJ3G/Bh+qFLUChDcwHAAXAx3o4QYVr
         pHk1BihkSRZrMbcMm7955IXBCwjMsHlK8qqSvx/QFkplmNTgCRAWqPsi/G4wLLVhWHPk
         mCIoI/SvNvp4mSA8rzDgKnDHIKPbMO1UyKjVWwg7MVOmblc2Fvprk10/BvaZFKw9d35W
         Ta7ju2cdFQ0u+tfordZlcrQd/TAis5XdIYmAzE+h4bVL3xhDXehhd8FUk3PwQa717+OV
         bTuCAUeOyZSVJ5llPgLVZ2gNk0Vnyo3m/vVzZW4kVFDiV3nnn7n7a6/4wbvZFex+vnk0
         kGxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fWfYHfNYfS/sJ3AAK3/QoR96mF2Mmr6TxqI0kAo1P/Y=;
        b=V4sVWXpvUF+pMFkQZ9LHT1RYtbnkBY31k2I2QZzV0ffcpbH9O20LZvh3CpUuKw0MnA
         EfW+QNepSyrTE3imZ66PuIiTQdG5Gyfimy0TLb7YZHgriQj5CgdCrkzM219LC1V+8JP6
         anSFRtOlyGIsThoCxOoQ1cJEC5Sd82mqcJ++uj0MYlMAUXUGNWfZ2ZOo3kZNabUA7Lux
         IWA0JATtfEhdhIEehtI10+nKsBFBco0y/2Vn+fDphLLRMcx5QInlvrlz6WmmBw+xqySK
         DGulyRMJI87sppI7v/rqf71J4LfAIHEOXD42dEv+i0AY8yc046QBLGlVhHOn2eqeHYEI
         6suw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WVsNujE5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fWfYHfNYfS/sJ3AAK3/QoR96mF2Mmr6TxqI0kAo1P/Y=;
        b=jnxIQC+mr0n3Oxw3oRaleuJd5rNgyyxsf4MpoMc6f2qYornCQDkJsui4NGTUQ3zRO7
         +XEm5rVNFrT/KXEgFSSgfsjTGzigEi6Rp0WScHzDMML8mjKo/Sel2jCePk0EWnGbW+7t
         fLdxs2dYwf1vK+Xwh8NBqMT/pUsXCvWQg3cdBSbMCSqdrJCL3us8VEQNWYXFgetCrhR4
         uh9NeRmohSP92dXtNcF7wjUQ1FKmIdrC4RwK3IAu/z4YdZ7lryrYrRuOvGREISJEQTfL
         1BSubjUvtXc6quc7Qgr5YSReJUjRPjl54uLqshAWbKpGBJNiGcyaJxaYkSc7dDB3fCQk
         qLjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fWfYHfNYfS/sJ3AAK3/QoR96mF2Mmr6TxqI0kAo1P/Y=;
        b=GanziaL5EDq/UpKBGzjtKfIu9ZdT9qJ+MDClkIHLuQ2duOSQLRxa40GsAL9KbEB0ws
         KNUH7RFJFmQ5Gf6mFtUbvcb4sdhjzJL98kVK/tThdNhf5Xb1IIt0d2Z5LTEVLe0+Oy9t
         /5zuOqeZC8xi2r0839FXftvB+ux6NIx0bKrGFkxLDkLa+4KBMQ+ALqMK54v6QAau/dOe
         VzasB/YwHwkh2WkSMDAfs8qd0iJiRFR3MPm4bXx5o1ZvzknOB4kEv1d7md8/sPa/RBCp
         WIuAxrfhspRkgeplv+TBMxKOghvtnP6ZltjyRG+xlUP/CKvfF4a+MHvUl2wy4v5HZm+f
         vJvg==
X-Gm-Message-State: AOAM532M9+uGIBXOyqlZWBnU4aFK+Ma9AOq+5isrECgj8IixidUnIyLw
	kXAM2k9g03ZZymI87HrHVqQ=
X-Google-Smtp-Source: ABdhPJyefCQesE7z22sMmrAqy4ImT6rqR+BOMXcmleCN4i+ZWMFDA4PDCbxzoPQQDw18d3W+bG3EZA==
X-Received: by 2002:a62:18d6:0:b029:1bf:1c5f:bfa4 with SMTP id 205-20020a6218d60000b02901bf1c5fbfa4mr6142646pfy.24.1611958071316;
        Fri, 29 Jan 2021 14:07:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a609:: with SMTP id u9ls5008024plq.7.gmail; Fri, 29
 Jan 2021 14:07:50 -0800 (PST)
X-Received: by 2002:a17:903:228a:b029:da:d645:ab58 with SMTP id b10-20020a170903228ab02900dad645ab58mr6482614plh.25.1611958070683;
        Fri, 29 Jan 2021 14:07:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611958070; cv=none;
        d=google.com; s=arc-20160816;
        b=MR0uOIxGXKwXEJeWKaWODSlUiu5G/mAW1hZ+AGR4VoIIage6VtMIXA1fA+5P6qk0U6
         +V+L93QnzDY+xeuWDkl/hrSp+PHARUXgcWzkrLj4Cf2nAS06JK+Yg9DyMn8ZejYB7D9s
         p72hHV6AqjthyNuId6euLJ26QwmIQls/f5lnzaEObn+b4bCTeRsJviHZsEC2B3qXTxrE
         FPmLwldiQhFwmE7Uz3wEm72Y0luNDCmfj47M6jrD6gDLPPQOoi2zozmAAsoWuzDZMdzD
         9KybBqHOPtj0MlTPBmTBCIElF8vg939y9dR++KrJU2n28yEBJpHEzUtbLxVKa45g/vw0
         Ng8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LDLk3Gi8vfPdyllbM1ZaiSSr9IGaOarIqu+88E328X4=;
        b=Th51w7r3Mk77xqgQvara9+I5Xv5tMuwKSfUJgNZp3jOzY/ar1Wxcry0PEoE2+gL/1l
         WcZgauyooz87dVhkBVHQEmDFkYz7CUGX8EcVR9GKV0sDbgDmUL3kbI7OUKGdkks0wBIz
         XIb00ssn3XQCKEK4OAE2rInIrp1o+JCAIj+OksSdRPjuzl4TZEQpTlRNk9tH8ZykRTNk
         +pL6RFLrycmdDiWWFKTFFIJ8A23eCV9StSeCZSa9PG6Hk96dqxHGt6cx/E4AUkHWk8Yt
         FKS9KzZHYmh8ghvKwShSRVUWLaRI+DSttY3pzyNKOYDKxynT4dB0IoFxdIg/JYqdgk5/
         QC0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WVsNujE5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id nl3si342726pjb.0.2021.01.29.14.07.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 14:07:50 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Received: by mail-pl1-x633.google.com with SMTP id u11so6065697plg.13
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 14:07:50 -0800 (PST)
X-Received: by 2002:a17:90a:8b82:: with SMTP id z2mr6395756pjn.25.1611958070273;
 Fri, 29 Jan 2021 14:07:50 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com> <20210129215158.xs2pidjkex2gtqs7@google.com>
In-Reply-To: <20210129215158.xs2pidjkex2gtqs7@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 14:07:39 -0800
Message-ID: <CAKwvOd=A8sk8fthHSaY_1qeJOg07FF9c6vFumszY_RS6a8n8pA@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
To: Fangrui Song <maskray@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WVsNujE5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633
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

On Fri, Jan 29, 2021 at 1:52 PM Fangrui Song <maskray@google.com> wrote:
>
> On 2021-01-29, Nick Desaulniers wrote:
> >diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> >index 34b7e0d2346c..f8d5455cd87f 100644
> >--- a/include/asm-generic/vmlinux.lds.h
> >+++ b/include/asm-generic/vmlinux.lds.h
> >@@ -843,7 +843,11 @@
> >               .debug_types    0 : { *(.debug_types) }                 \
> >               /* DWARF 5 */                                           \
> >               .debug_macro    0 : { *(.debug_macro) }                 \
> >-              .debug_addr     0 : { *(.debug_addr) }
> >+              .debug_addr     0 : { *(.debug_addr) }                  \
> >+              .debug_line_str 0 : { *(.debug_line_str) }              \
> >+              .debug_loclists 0 : { *(.debug_loclists) }              \
> >+              .debug_rnglists 0 : { *(.debug_rnglists) }              \
> >+              .debug_str_offsets      0 : { *(.debug_str_offsets) }
>
> Add .debug_names for -gdwarf-5 -gpubnames
>
> The internal linker script of GNU ld 2.36 will have it.
> https://sourceware.org/pipermail/binutils/2021-January/115064.html
>
> (Compilers don't generate .debug_sup, I added to GNU ld just for
> future-proof.).

If we don't use `-gpubnames`, do I need to future proof the kernel's
linker script? YAGNI? :-P

(Since I need to make changes anyways, ok, I will add it to be safe.
Thanks for the sugguestion).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DA8sk8fthHSaY_1qeJOg07FF9c6vFumszY_RS6a8n8pA%40mail.gmail.com.
