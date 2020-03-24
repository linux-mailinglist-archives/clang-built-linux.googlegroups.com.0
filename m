Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGEH5HZQKGQEXGWZMRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB8919179E
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 18:30:01 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id x6sf12485398plo.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 10:30:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585071000; cv=pass;
        d=google.com; s=arc-20160816;
        b=ndNsIXlpI/0jn6F+3ECMFIBxzV+UdHvKXMMvBHJawNMInBkfPVrZXcGfB9eTCPgjR1
         pRk38zW/9/H6R6xSJd+AqIqUocXZjL04RAhoOIH7h4V9hdGUyb+SUT8A/HlBk/qXT+Ou
         R0T4XkfMvAA3/NWMl1QuKxLHg4KgTWDzIcqRwqUkh+uzszPx8Bw5+gs9nlL5YmZ7W/CJ
         KrM+L4DFyHO90aIldku6XnCWM3xnlOINQW8dnAUJ9d57lkBi+UA8lffYNJjHFMdQ8Ejd
         BXdMuBeWucg95PhurNy8WTZ4KhmchjpsFVOiHZXk0mKNOkpX6ekBK1Nq9FEJP+37HDkk
         bE2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xBKi4mKk5U8M9UwjU+7a1B18QjK9H+SI5LytT5D/85c=;
        b=pOX1uKAMFub6ipQ0+KVjtwVO9JBCwex1g4bPHAx6WPUn+3SNFyUuobf8Ww73cdYfA2
         PDvb63AzywdRzZf+q/AvZqeE9N+1gfaNbGVUPM3A4DtKJZlIyUeePLxNSc6TdIhpqdwB
         2VpVR75zLAqWJfcelS3ohCA3ZaB9vqsSkUxrdfIuj/RTdg2d0qlXJDZcAagAfjVDKuGh
         bo82+GOi6kK6+6HImFky0dB2w3JwboE8xBMswZcZznE7KsVPnWWNIU/CqcqsOBP0a9cc
         TN0bi/imoAZowCIf/GK/UTvVVDYRy82/pfYWyr55SqamS8bBt3Wbh/U+Hjbt9+2cP1gc
         xhlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m46TPzI0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xBKi4mKk5U8M9UwjU+7a1B18QjK9H+SI5LytT5D/85c=;
        b=RbO1MAMO/N4Co1U4rZzhzEiK6vPXH1Vrd6Wflhp1YK/A7baLLJ12RTyWOpFQlz61Kl
         EO2hV/RHklVv5YsEOdt2JrWDheoDZwnHRp62g5F0Brpr7GOh+VkgSXXz9pEPiV1iktFy
         Wt6+lmzatxTgm/qXzwkpdwpl0NAosdEacVmM6IP/+RBtB1Qmkk3gXg8QN+9/PiK3gXnm
         JL7nDDkSi62jXryveH5UeoTEIgXLsETLYi6xOx61TL/xBiC4i9uGufH5LbvU7BcxYghP
         OhZlkjkZctX5FCDbUm+rLV2jKQslzBhlNC9S6Nt9JBRmQeLu2pwbCxIpptb9UqVZiGen
         ATbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xBKi4mKk5U8M9UwjU+7a1B18QjK9H+SI5LytT5D/85c=;
        b=RKCB62wG37luNIqQgUkUB+tQRjWmBrAqDuUeLZadFG8zy7WedeVIv3O1l1bh/57P4e
         QNrGxli9X2C+WUvNPmgHwP5eL2CvRdrm4/DR5z0+QEZEKP7t9il3pO8MuLAH0LB6MA4f
         k+05PdrQ2AzRKb2mUWA/6PwtInUUF0l6mHd423LYNJUOu5mtTFwJ33hXc2Ur159KET8o
         xhC2KZn4sUBvsroeCML9hgMweKRI9LaAEY5e1o/aXaVB/wK7t/wwJG/h5p/riS2o1Gtu
         YwnajgP0PIbquRlLG47oOPW8xPw99SdLykGwzyt/+ewimm+YQwfxnKj+d8INHxrjca5S
         UO6g==
X-Gm-Message-State: ANhLgQ0b5Y2MKWtRKNht10Mng95lNHVPhY4Ekf7ZlxSkuZkIkattNszm
	NcZE1MtGv5xcXnXGQxNVdhc=
X-Google-Smtp-Source: ADFU+vtEFT/OqAdVIP0+nBdWmS94QfGYUQYhZLjvGLCx3G+307PJunpw92Hn1dedSuQX0SSBrQ6H6Q==
X-Received: by 2002:a17:902:b692:: with SMTP id c18mr27956376pls.7.1585071000440;
        Tue, 24 Mar 2020 10:30:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:332a:: with SMTP id m39ls2304928pjb.2.gmail; Tue, 24
 Mar 2020 10:30:00 -0700 (PDT)
X-Received: by 2002:a17:90a:a40f:: with SMTP id y15mr6972986pjp.143.1585070999956;
        Tue, 24 Mar 2020 10:29:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585070999; cv=none;
        d=google.com; s=arc-20160816;
        b=bh//VSk1jbwdSt7/kxfl2kFU47WGD2aiE+62z7DCYeZRdnr16CF1Z9Opsaio0M27Oq
         c7eD4EiN1uRMb6L4nQVwYiIUWdopBZE9a/hrkpG1j78nG4c/1UK1R2HmTSzW2408+mvw
         v4ytFKRkNmG9OacXHt2yzKp2lWXbfHMsVY/NB4YON/by2LURxCarTLZtHGDrNe0deWVi
         +4jcQdlcBTEdt/2nEVeEQwiSnHdFe/OG56DXHQRUWG4hW8BNv3wg+TjMZ8VRA6fKu26v
         0jwn2reUQO3BrFxjxX9eea91whOlKkRQampvbZGqLt9I1TbqBdZop/Q9Gr2L/sHo174Z
         h6GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kq+FYdniWIla4pk5nZSbH7cg3uuV8JkCybEVH1HaxnI=;
        b=y24QKxYe1CPJuwWTXS6zab83XeWMm6uGu3iAwXWMfNfNLBJr65EfkVTdaKjpdDPB7S
         O9mLWIhkl45wKp7RIAlX3Go2wPzvAJpWwFEiy6bKPPMBN50TdovZ1GKeS9hzVexdNiNh
         PwakOTugYgVopeEWPjDQ3oV906MG3ph1H0SdYQFFOXM5PUWngwzUExxVWNDlBZBSKvbX
         xwQhLoDvcVQm1QfX7ZKDIEv66dWy5S5L81SbKZRS4Q2T67m+OHF9PPxVOwgwc6MH9ET6
         p+c6a6QSApE2dUVQ84nR44kCmrnPoFm0CdV+FxszLT10ABoG6SylA4/YJEvgBeGxzIWS
         4Ghg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m46TPzI0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id ne6si205729pjb.1.2020.03.24.10.29.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 10:29:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id u68so9638185pfb.2
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 10:29:59 -0700 (PDT)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr29126500pgb.263.1585070999349;
 Tue, 24 Mar 2020 10:29:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200323114207.222412-1-courbet@google.com> <20200324140639.70079-1-courbet@google.com>
In-Reply-To: <20200324140639.70079-1-courbet@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Mar 2020 10:29:47 -0700
Message-ID: <CAKwvOdm6GH4nqMkK99g5y5q0VfE9J70AdBP4C-xkxQbgJf_tzw@mail.gmail.com>
Subject: Re: [PATCH] x86: Alias memset to __builtin_memset.
To: Clement Courbet <courbet@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=m46TPzI0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Tue, Mar 24, 2020 at 7:06 AM Clement Courbet <courbet@google.com> wrote:
>
> Thanks for the comments. Answers below.
>
> > This ifdef is unnecessary
> > This needs to be within #ifndef CONFIG_FORTIFY_SOURCE
>
> Thanks, fixed.
>
> > shouldn't this just be done universally ?
>
> It looks like every architecture does its own magic with memory
> functions. I'm not very familiar with how the linux kernel is
> organized, do you have a pointer for where this would go if enabled
> globally ?
>
> > Who's adding it for 64b?
> > Any idea where it's coming from in your
> > build? Maybe a local modification to be removed?
>
> Actually this is from our local build configuration. Apparently this

Not sure we should modify this for someone's downstream tree to work
around an issue they introduced.  If you want to file a bug
internally, I'd be happy to comment on it.

Does __builtin_memset detect support for `rep stosb`, then patch the
kernel to always use it or not?  The kernel is limited in that we use
-mno-sse and friends to avoid saving/restoring vector registers on
context switch unless kernel_fpu_{begin|end}() is called, which the
compiler doesn't insert for memcpy's.

Did you verify what this change does for other compilers?

> is needed to build on some architectures that redefine common
> symbols, but the authors seemed to feel strongly that this should be

Sounds like a linkage error or issue with symbol visibility; I don't
see how -ffreestanding should have any bearing on that.

> on for all architectures. I've reached out to the authors for an
> extended rationale.
> On the other hand I think that there is no reason to prevent people
> from building with freestanding if we can easily allow them to.

I disagree.  The codegen in the kernel is very tricky to get right;
it's somewhat an embedded system, yet provides many symbols that would
have been provided by libc, yet it doesn't use vector operations for
the general case.  Adding -ffreestanding to optimize one hot memset in
one function is using a really big hammer to solve the wrong problem.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm6GH4nqMkK99g5y5q0VfE9J70AdBP4C-xkxQbgJf_tzw%40mail.gmail.com.
