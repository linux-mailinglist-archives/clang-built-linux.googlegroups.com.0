Return-Path: <clang-built-linux+bncBAABBQ4HZ7YAKGQEYZKYEKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BFB131C62
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jan 2020 00:33:25 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id p206sf32012048iod.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jan 2020 15:33:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578353604; cv=pass;
        d=google.com; s=arc-20160816;
        b=rLejAX6lNEqMCUI5/B0fO/rSpMSuxUu4mzuRg5URTlbQeCJc6qqHyzPy/qiY+UunE7
         yV5wCfI3x0U03ZzPChPrEt0fyqwe/Nt5X+uBaucCkcb1k+hRdgr1vJXU188Qa3UET+5j
         ixL7pGACRTx4mecX3EqOuwldilIJ69Pb2lSQmgvtfv1HszwF6ngAdnUO8lXGxh1LF1+0
         oPekyIDF3NJF/IZa/QXK6urOehkaft8h+m1hSc+1PKXEZYU6Wzbgr5ykfZHISdH+t162
         vKmsPv6KcloD8batMtF2slO5P9Ji70I+4VcaCuXhIOd2cY6KozQ7Ji7toW5GZZe7q2/j
         ozbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:subject:cc:from:to
         :in-reply-to:mime-version:sender:dkim-signature;
        bh=5nNY/lwq1Hyvvc1KPjuvdKZTIfijmN4HIt3ceCR+y/U=;
        b=DIZglMq5ER/6/2cLC53T6BBg8+Tsguw2zYFriDqVDuXXHyxdrWgm9a6/BH8ylkvZtL
         nG+4VuVeYPXGfj3HB2XXQQA5aHUCxdPkLJCBkqLzq/ffrj7Ec8FYO80tiO7Qd/VrPsfg
         cByTmQpEiz3K5ErXcvvw0c0nP24hB8MLTek1Jemi+xa5HvZNYJe/aJ3akCphP5iodJP7
         zDFc/AtmzeREYdJzADpRJqtCW4AwMHL7vRscz/RLHwMFH54v2PJtJs91s8JzET2da2TO
         E6GOd0XnyMtzsYHXVgcikzfQsztBi33l8LEDE0s+1frgeNN/tju+mUFWN1kUZ76waBtX
         h6Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:to:from:cc:subject:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5nNY/lwq1Hyvvc1KPjuvdKZTIfijmN4HIt3ceCR+y/U=;
        b=gDbUI9gHFexuPwM/IbAjBPOFDuzqAhU/a7jX9oPHSFB4OCYcUZnqajIO2GyE63uphD
         iJKE0cUBk5LPRq0XQNVK8SHtyyExkjGDbXx5OKDKoredItQh/C8fBffc2KSE8JinAfT9
         WYg7bULcGOJSOums3r5xK/hLnsX5NuUGUorESxlT/PL3eAqd9c37iwYfKwAkZlDXUI05
         O3ai/ZrlQTljBC3HosVB1+5gFlEWiT16UaT4c4DMZc9oiWeXOzZZ0ZUVozUv+ktLFK3f
         PNlGP4ZCQhsDp27LoS3hZJeuGL9EE+iig/IRLMFweOE8cR02F9AHWJ6gAmtm1CGFXjIv
         ryeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:to:from:cc
         :subject:message-id:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5nNY/lwq1Hyvvc1KPjuvdKZTIfijmN4HIt3ceCR+y/U=;
        b=AcjaYIKfNrBpY4jJgvGVneAAQnc011Ecdzl4P+mbVSwKLY1hCOjF534C711aFYe4Ru
         X+BbAVO/YReAyIPceCLQ/RkJl/9vuVS3q/ZW0JWNeDvijiyvs9Xjs49XAefR+9kth0EZ
         OrqHtsuyE2OgNK7x+zipFsJNiTLw79b6b0zkuurEiU7KmxKMBtLQYaG9zsM3WxP/pP8t
         jYhAd6ETUTRxt7y6eXzYZ1KVBgabn04b51St1YzDawGfp2K4N3P8TD2bK3ElUz/DaSMG
         j7Ye5SPM+2EigW4gnrwAUddSIfwPFz9TCSB5gJaAfbiZG573I+vqACQD7p5bnbxzNiF3
         xfUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX25FTB2I7UHogTmY32RTI0aXa7u5Tjzur8k1CF4tT+jgGt0C2a
	YgmT4X8otRBEFIdQo0YL9Tc=
X-Google-Smtp-Source: APXvYqyJYRbmnWt2WVs2m69aHJ6cxVhiD0VHzjPM0/r2IgdOCMGdZCz2Ay91Ql5J46lfBRGw+ugDtQ==
X-Received: by 2002:a92:884e:: with SMTP id h75mr88691288ild.199.1578353603888;
        Mon, 06 Jan 2020 15:33:23 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:c411:: with SMTP id y17ls5752583ioa.8.gmail; Mon, 06 Jan
 2020 15:33:23 -0800 (PST)
X-Received: by 2002:a6b:710f:: with SMTP id q15mr71696934iog.103.1578353603381;
        Mon, 06 Jan 2020 15:33:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578353603; cv=none;
        d=google.com; s=arc-20160816;
        b=i8L7XstMd4lZW19PhRVFKYmAFGW6uhju+mzpM4tOzXPzdl0+9LmKmjgNbSyp37k0pA
         1bw17u9nnJaoWp5Sj9x2b9FQ1CZBxsNq+yHdINv6QQp5IlcEEPkyb6Wpbl8+6CpCv4uQ
         NB8OXIbXIWSHvlXSDmt0ItTeRictVH1JvVJajqTjrJxbmj9+VtVn+RNvcDeaQYc5z3UX
         1Iocu1luwlAO2QBNWf85xpaOe94EyzE1eERzBHtQ8rOtien49ARB5nraKvNMq0Qtj3ct
         gt/jo2txTC60eleTuqsISyM2wuhu7UjuGcH/8ReHJ7vZWInLL+e+9RPw++HYiS/N7jDt
         hieg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:subject:cc:from:to:in-reply-to;
        bh=hgjjmcnByhOvDv4sWMyasPdKEB9qjtC/oF1QKieKz+U=;
        b=mkfbSPY4tPxYrT4rzpqNoObp0/ZyuE6vbt3FFOknTExUf13yz/Hp39CoISG6IkJaf1
         dYNp6tGv4gklLuqU1elonHW8P6MNrM6FO4i1oKqQ0f7mcA2cEo7VM3E7o7wPs+RRUBXW
         36hiq4q8h5n9VdYIGf+qemzo4hIMR0BBLVgHtpyU9jDiBdWWjLOa3X+87S+P6LOB2GCp
         NdiCxngSbVzyQnx54uv9/eSbCxn0qNFKcLFDXIAvvQgFJp+raQfFnuQHwov1ZmvrtT8L
         HwAx2kz09Q5njHGUWhj5lNmg9NarHAx22WwjbIIOcKYismMjo5iySuSzIY8Wxe+Bajkp
         h8vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id m12si3151219ilb.2.2020.01.06.15.33.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2020 15:33:23 -0800 (PST)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 47sBdn5hHgz9sRG; Tue,  7 Jan 2020 10:33:17 +1100 (AEDT)
X-powerpc-patch-notification: thanks
X-powerpc-patch-commit: c3aae14e5d468d18dbb5d7c0c8c7e2968cc14aad
In-Reply-To: <20191209200338.12546-1-natechancellor@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>
From: Michael Ellerman <patch-notifications@ellerman.id.au>
Cc: clang-built-linux@googlegroups.com, Nathan Chancellor <natechancellor@gmail.com>, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] powerpc/44x: Adjust indentation in ibm4xx_denali_fixup_memsize
Message-Id: <47sBdn5hHgz9sRG@ozlabs.org>
Date: Tue,  7 Jan 2020 10:33:17 +1100 (AEDT)
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=michael@ozlabs.org
Content-Type: text/plain; charset="UTF-8"
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

On Mon, 2019-12-09 at 20:03:38 UTC, Nathan Chancellor wrote:
> Clang warns:
> 
> ../arch/powerpc/boot/4xx.c:231:3: warning: misleading indentation;
> statement is not part of the previous 'else' [-Wmisleading-indentation]
>         val = SDRAM0_READ(DDR0_42);
>         ^
> ../arch/powerpc/boot/4xx.c:227:2: note: previous statement is here
>         else
>         ^
> 
> This is because there is a space at the beginning of this line; remove
> it so that the indentation is consistent according to the Linux kernel
> coding style and clang no longer warns.
> 
> Fixes: d23f5099297c ("[POWERPC] 4xx: Adds decoding of 440SPE memory size to boot wrapper library")
> Link: https://github.com/ClangBuiltLinux/linux/issues/780
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied to powerpc next, thanks.

https://git.kernel.org/powerpc/c/c3aae14e5d468d18dbb5d7c0c8c7e2968cc14aad

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/47sBdn5hHgz9sRG%40ozlabs.org.
