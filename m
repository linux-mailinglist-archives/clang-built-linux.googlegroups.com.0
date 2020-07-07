Return-Path: <clang-built-linux+bncBC2ORX645YPRBUN2SL4AKGQEOUVEHGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1DB217344
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jul 2020 18:05:38 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id z23sf24626088ote.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jul 2020 09:05:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594137937; cv=pass;
        d=google.com; s=arc-20160816;
        b=GskgrRgWBJqBcFe55WH+nHKK3jgnIWonHJYmUdqz8upNBErWRQLAB6z6NKA64qUTrD
         6orhDVnX0A4PJwgCY/6Rg0wFBwGdY5dSFNZNih8ENOd9bR/nVpetcbHE72w/qOr+LU8y
         X/pFQTOd/LxoUUV4uIezPtDcv5dl214fk9BvH+JMACUAYW/MRF634aVrYHHlJEQCnZ1h
         EpsgEbhnukZYI1O6IGUZZK0fR6QaRuKy/f5TrkBDjsEGS5i9fXtJutIKUmFkMypT5aGA
         bQOFbioICNW9/aQcKuCNb2ttAZ40RfZGJdaI04IyDjPERG2tRI+3i915XzJD37vz9OIa
         ouPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=/VpPwKNaiCh3UONKAK1ECcHYktoBQrCpYlqd272Sjlw=;
        b=lmIirZMez4EVfjJjoptXih1KKP5NJCk9fef/Uvs3/kFveS9FGFVGRgG1c7s+aZ9hpF
         J/zvRl6au9vbWkC21mscymi/V9BFD18z/nNFHfgS3Zbkv8awKWkF6OXQpg5eBfK8dIh/
         hz9cP8uGo2jZl42UNK1syffSv7dcBtHuXv9QZSLKlecg16/WR3z6XSdXRo95CFeEbuHo
         m78nYfKn+841gAXpjIRqwq89ezymthCcvB/KjBAr+EiAMHDN/tVdUDB8+rOdtbrq26ci
         fSSnWdWc112h1veuyqOKP/iKHk8cHJ1g4PSdb4ATiyusgStyEOs9AaQAh+WMvEsjMM6y
         D/Yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Kh7nComz;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/VpPwKNaiCh3UONKAK1ECcHYktoBQrCpYlqd272Sjlw=;
        b=WCIWiqulbgk1DKNvOWrUXnl57gwupK10y6p+6eYc9e1tELUZqeu4OatdpH4hIVxCFB
         cdxjCA2CWICHtWipqm4UHCQE+yNM3wxSi+PzCB/rvNDEvYzWbcQukyOOgYiU4yF/fFgR
         NEWXoj1mD5CozE7sasRkUnc0qrFV5HCJIsXZGPZs/hCNaVfULn2wnEJYCRFGQTfMgfOE
         OadmhAGWhzCyZ/NHtMlsqKqO25RfGW0VqUwLMBa/aqUwjLnDSbcEzTmSc/FtXAHIraNv
         rlYb/7aqGqoxbmzbZfvSN9WSIF388lCAWp0TuKRe87/jKmRCOsSaLcdQMAK+czSvb+he
         VHaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/VpPwKNaiCh3UONKAK1ECcHYktoBQrCpYlqd272Sjlw=;
        b=TyJyEDMV5tTKSlKxGY+hWzSCWcPSX89NArwphTUxw3RiYakwu3WB4e1UwpbCqZHQXN
         IPOv69xL84HxJM5g5y7qzhO0Usa79G2/dPHwd4emn+DZqHo2WuMGco5QkmzhAbvboGBT
         R/qWmDDO7DUgj8GGUOTivVii5fAyQtmv+TAt1LxScVYIuVKVesEs0CgiMtIHgzRhG5A4
         yMT27iAS6lDhruOESaCi/2M9197ncv7XUZBl8H+7IsUZoqPkkniM1Djp3QYlcuo4VULD
         AQIq9gSGUaiiCppiO7I79W30tvHXXT2ZbB7MXXsz5XgBHXZWdrRC0fYLPyQbnLueo6ya
         lPwQ==
X-Gm-Message-State: AOAM530+/fqm0UP9P9J4pLmV+7AHXolnjfjZrSae6HM16QQddxUE5w13
	erW9GJ2jLKJEzYp0RbCTW6w=
X-Google-Smtp-Source: ABdhPJz19RtXi7t6VhqvrOHvS/iJQFHm3XQP22VV8g0h3iQwwlDR+KVdwpg+QoV5VfKIHUYxscljtg==
X-Received: by 2002:aca:db09:: with SMTP id s9mr3824972oig.98.1594137937499;
        Tue, 07 Jul 2020 09:05:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:8cd:: with SMTP id 196ls1561117oii.4.gmail; Tue, 07 Jul
 2020 09:05:37 -0700 (PDT)
X-Received: by 2002:a05:6808:50:: with SMTP id v16mr3869342oic.138.1594137937071;
        Tue, 07 Jul 2020 09:05:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594137937; cv=none;
        d=google.com; s=arc-20160816;
        b=eKZl7m3MPjWrgoNp/K6JZvShmLksF+J5+2RbiuBdaicNSETLBgp1CIxeXpA36wGZAq
         YWtMSNLaXSPtAfhMbu3YhyVjdGAGAepZakjXJdcCgO2usoC6VFh+vPSk+NhueJ2+/jWv
         gTdU6LhgYESerihUFiTFKi5K9Wfrhxaee63wa8c5155trUgU9iuN7UW3EGk6f3KPaqZa
         MVuEfqMI9TFLlM5Ua4D2zmrB57sJx5l+on9XU/22us7Rm+2EnPlvRM0egaHTCvQeMTzU
         OVILW90oGxaeXBPju2egqyhSMW0W07hMW1CRBSuZdhFl7XHnYlv9UIrQYvKp9cCHuvdu
         nnaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BauIxngYcl8jd5OtL8hzkCrhdMv4YPyYU2tM2gh0/zA=;
        b=gwMwd86tlZBUBwLUAZFKJ2uwwe3tKmHi6H1phhmPsadIpwXHYCeOVq7t4cm1W4HnVl
         I1yop5qKRUMOc7bA+Mw7G5TWbsn8+i8lQoW+3XrcLu3sW6XBpLncWZlucIKPYKrlPxuC
         EfXXggtnxQvAswDLgDrf6A+GgTQ3TITWylV9w7n1Kn6TXmLyoK+WUFJSBKGs0MGXXxen
         h9koyKX3Ay+RDaq0FBKuDOZkTzjgYY5T87tAlV6R2uS9KGL/1kHP6GbC9/+k6dq/Dkpq
         Ay/ou/nwQAphIWeIuHmWgzJZEyJH2kDE7m7dTePFp0yyTBsh91j4f5op+L6Vy8xfc4Ml
         CZcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Kh7nComz;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id h25si84015otk.4.2020.07.07.09.05.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jul 2020 09:05:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id d194so16839926pga.13
        for <clang-built-linux@googlegroups.com>; Tue, 07 Jul 2020 09:05:37 -0700 (PDT)
X-Received: by 2002:a63:5110:: with SMTP id f16mr44344138pgb.377.1594137935802;
        Tue, 07 Jul 2020 09:05:35 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id j17sm1222342pgn.87.2020.07.07.09.05.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2020 09:05:34 -0700 (PDT)
Date: Tue, 7 Jul 2020 09:05:28 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>
Cc: Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200707160528.GA1300535@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <CAK7LNASvb0UDJ0U5wkYYRzTAdnEs64HjXpEUL7d=V0CXiAXcNw@mail.gmail.com>
 <20200629232059.GA3787278@google.com>
 <20200707155107.GA3357035@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200707155107.GA3357035@google.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Kh7nComz;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::543
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

On Tue, Jul 07, 2020 at 08:51:07AM -0700, Sami Tolvanen wrote:
> After spending some time debugging this with Nick, it looks like the
> error is caused by a recent optimization change in LLVM, which together
> with the inlining of ur_load_imm_any into jeq_imm, changes a runtime
> check in FIELD_FIT that would always fail, to a compile-time check that
> breaks the build. In jeq_imm, we have:
> 
>     /* struct bpf_insn: _s32 imm */
>     u64 imm = insn->imm; /* sign extend */
>     ...
>     if (imm >> 32) { /* non-zero only if insn->imm is negative */
>     	/* inlined from ur_load_imm_any */
> 	u32 __imm = imm >> 32; /* therefore, always 0xffffffff */
> 
>         /*
> 	 * __imm has a value known at compile-time, which means
> 	 * __builtin_constant_p(__imm) is true and we end up with
> 	 * essentially this in __BF_FIELD_CHECK:
> 	 */
> 	if (__builtin_constant_p(__imm) && __imm <= 255)

Should be __imm > 255, of course, which means the compiler will generate
a call to __compiletime_assert.

> Jiong, Jakub, do you see any issues here?

(Jiong's email bounced, so removing from the recipient list.)

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200707160528.GA1300535%40google.com.
