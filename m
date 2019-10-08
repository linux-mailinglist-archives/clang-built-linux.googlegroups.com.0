Return-Path: <clang-built-linux+bncBDYNJBOFRECBBKHT6PWAKGQEUEYCLOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD66D029A
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Oct 2019 23:03:37 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id r3sf15131lfn.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Oct 2019 14:03:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570568616; cv=pass;
        d=google.com; s=arc-20160816;
        b=BOWh4LFyAvN4Lr+gAVEt8Es8tZ1PvMBG7K1cVB+hsMK60c3vWxBZ2CQC+pfJZoVYM9
         6M99KsrDzBCnKVX9yH+2fz4AdqiWG7GiASYgM5nLTkiWJMSQeTvfgzMl83p1HOcUTucf
         pNTCxwTFeWU2wJiA4Jr7mQidbTpt5ShLsrZZ3CglZGdTsAVf9MtGXKeNQyvGYQKBYuVq
         ZqlqY/nxxjosHkJYdhVCHjOLR9pXgmxYD9ILw39BfRmPegqL+LC+la0yTuSBRky96nMh
         15pSqST+E/Ctn535FKNyf/ZAMqDf/w3iXcZVMDnEhtp4Ycp0FOXmwrVL78+89qDERBCI
         UABg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=eRM1lRqr+vIK8GWZAChkm4CeIo/nlr3OSQNrIoLkgGk=;
        b=Byw52J+8MLcyQYZ/eSpSB7tfp2zv1eGFyZTMCBZ0DioQgCmmmi/lVMDQ/P7Tkxetrn
         tyiMlFbz8tkpFRiAoNJz/8m5Qn+Q6DIfkvaR+kyW3jG3z3RNiKGBg/mR8/A4HxVy+mn3
         9nj35+W6H8nyhDINLqa/2Jd9TNE0sCmgcmlBWj/Uc4c0rkMzODdhVhRnr3usfOP7U6Er
         7X9+Ci8qj5oAoF03xUaDWB/cFmVOhkbqUZn6bN6JSgmk4b13PyQWaKuxhtAUfK+OG4rs
         kH1ZS7qnspLZl1D+tfptAPPKTlrbIeevuGwy335TNyr0jOGhGRY+/UBmdRRmX0JRzcWW
         Jqgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=m9awFJIn;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eRM1lRqr+vIK8GWZAChkm4CeIo/nlr3OSQNrIoLkgGk=;
        b=GJ36h2iIPMyzIZw5GhVtgOu7FkGj+KxT4pD4l/feFdXgDC7tXTZjPTKP06yky008UY
         cR1z0ZpfnWrudj92sG+d8VXcp+zFwYISxv9tRCLPir3p7arKc9Vmw03RJrsdS4E5T1Yd
         xD+EuHIPZKsjiRGL9/2D9nf6viZjNhM/S3ZjT+uN13VBRQlFU3nMHvmKFL6Un5ss26nG
         GgVALBXTJxJ07R9N/+Bm3QlspEvj8j72uf1Q2o50H67OU0OrU/gZNIctGLtavtWqUNLR
         FfTvwoOBTMa25RA/LRSU9PWWSEtwS9OFOPnTQ89TbJaUI64TbU8O9FT9af2LruCN/vrj
         706w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eRM1lRqr+vIK8GWZAChkm4CeIo/nlr3OSQNrIoLkgGk=;
        b=TRVCZW5UrRl288UW0Yu/PGiG4rshLRmokOkIfr/B7NsG03hwmlflwQnbe0VdNXvHLZ
         rdwkfLjVqSrTaVh7xG5fByL8tlUESpFjEy0Hdoz50YXR/9uxlKzHgkHGtKj4tRBCfIoD
         ItLOKByC6WWbNnYV0rglIlpRJK7LIwkhBCUiZth5P/vWMHY7AlJ95ohmxyF5CZn0HX25
         vRE2NgySGq+3G5bSjX55H3Kf0WVyjrwXqsCcwNbIp3Y+msQBln2iNnsePiAu9+pQBEHs
         4oAl08DF3dDhjNHQps39qf+b4Y6iAWwtdp3NprjpL/LXOpYHwHRrVoACvlewoV0cqwgw
         XfTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUHXSP5z66HPzqjmOXOS6rVOtCiq8rnKmcf8ijZ4w0J0/eZAAM9
	zDVRqos50m7+0Rnh04ll2mQ=
X-Google-Smtp-Source: APXvYqyVth1bepYXxjCVkUtTF9uQRw+LA5lBCnj5jwmRYJc5VzG6Z7mKefthLFdJVmO5DXVzQCvHLw==
X-Received: by 2002:a05:651c:237:: with SMTP id z23mr146046ljn.8.1570568616797;
        Tue, 08 Oct 2019 14:03:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c396:: with SMTP id t144ls414560lff.8.gmail; Tue, 08 Oct
 2019 14:03:36 -0700 (PDT)
X-Received: by 2002:a05:6512:1da:: with SMTP id f26mr11422479lfp.117.1570568616299;
        Tue, 08 Oct 2019 14:03:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570568616; cv=none;
        d=google.com; s=arc-20160816;
        b=wMoGwBlu47DkQ9VWXdWQK1J6bwdIOeJmY9mfOb4iD6oqIew97GIRath0YK6uMR5EPY
         A2UDu73jftoLWxK5FNqdu5ydCpzE/dz+TvNyGzKPcLACwVb59qH7BhvXcd9gCAOWt9h7
         tsvDzMG+UiGuz7/uFqEny7myJqj4Xd1NwdmxhJc8j2kapVkovLLNyIIVYuh7MVdhgJrj
         BhhGENBsNdy32s3RMAICeqr5pYmEuNVtbBffCQvE7n+XmiZ38gGL9adXUZh1ms89y0Cn
         sJ9OFaNszmPQrSRpvVg47gL39Sn7zYxvOBX8W1wXNkus2+M/Jmkx9O67WHcBXFAPOIw+
         26ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DwbSuCVPgdnfuc55S5QoU+HrLN1Lslk6AXfdZ8RTC9E=;
        b=un3zYS7JPeKpr4Cqh9h6DDbmgqkYowbe+gMVslzxaS8BilAJQ1WQHcfFy6CxIqJsAd
         nkHwTUEsitWY6qrEZj/dQswSai9mEYohEmK62ucozD5ka36qGCbRrAAu4ogNLSGlG9mT
         y9y4gX0WoByVIeo669E9jyWExzgwhgFeYFY2+5A9Q7krmRnaxi+C7q87zYfydNBR7wqq
         MsSp1tw6fztKZbu0096I2moaq6yP19Uf7Ob9peTgnfoO5qte4cC3uCoZwlleDU5+DTc1
         HbWMhlPZ3GsSrgk5etE++I1cRySF324ct65Uw2UOw+1wqdxWQGhqPyxgfOAnb8GVoUti
         9+UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=m9awFJIn;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id z9si5339ljj.4.2019.10.08.14.03.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 14:03:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id 3so4576923wmi.3
        for <clang-built-linux@googlegroups.com>; Tue, 08 Oct 2019 14:03:35 -0700 (PDT)
X-Received: by 2002:a1c:a651:: with SMTP id p78mr72278wme.53.1570568615342;
 Tue, 08 Oct 2019 14:03:35 -0700 (PDT)
MIME-Version: 1.0
References: <20191007201452.208067-1-samitolvanen@google.com>
 <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com>
 <CABCJKufxncBPOx6==57asbMF_On=g1sZAv+w6RnqHJFSwOSeTw@mail.gmail.com>
 <CAKwvOd=k5iE8L5xbxwYDF=hSftqUXDdpgKYBDBa35XOkAx3d0w@mail.gmail.com>
 <CABCJKucPcqSS=8dP-6hOwGpKUYxOk8Q_Av83O0A2A85JKznypQ@mail.gmail.com> <c0f0eb7e-9e46-10cc-1277-b37fcd48d0be@arm.com>
In-Reply-To: <c0f0eb7e-9e46-10cc-1277-b37fcd48d0be@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 8 Oct 2019 23:03:24 +0200
Message-ID: <CAKv+Gu82ERZjaEH265+RNVjtQSk51ekHONniDZg-4vWy1VHkuQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: lse: fix LSE atomics with LLVM's integrated assembler
To: Robin Murphy <robin.murphy@arm.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Kees Cook <keescook@chromium.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Andrew Murray <andrew.murray@arm.com>, 
	Will Deacon <will@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=m9awFJIn;       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue, 8 Oct 2019 at 18:19, Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 08/10/2019 16:22, Sami Tolvanen wrote:
> > On Mon, Oct 7, 2019 at 2:46 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> >> I'm worried that one of these might lower to LSE atomics without
> >> ALTERNATIVE guards by blanketing all C code with `-march=armv8-a+lse`.
> >
> > True, that's a valid concern. I think adding the directive to each
> > assembly block is the way forward then, assuming the maintainers are
> > fine with that.
>
> It's definitely a valid concern in principle, but in practice note that
> lse.h ends up included in ~99% of C files, so the extension is enabled
> more or less everywhere already.
>

lse.h currently does

__asm__(".arch_extension        lse");

which instructs the assembler to permit the use of LSE opcodes, but it
does not instruct the compiler to emit them, so this is not quite the
same thing.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu82ERZjaEH265%2BRNVjtQSk51ekHONniDZg-4vWy1VHkuQ%40mail.gmail.com.
