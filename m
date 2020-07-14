Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBV5HW34AKGQERCO6XLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A65121EED8
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 13:15:36 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id c26sf12311912qtq.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 04:15:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594725335; cv=pass;
        d=google.com; s=arc-20160816;
        b=KYG1MB3D8st7eazEkB3QB888EZMpZbUu+lDn+sWNIHjXIMz6a4wKEJmvxrl+GueY8y
         aVMtwKmJ98LNs5lYKsO65AzCXV3BgKxFtmYv/CryjKOyQndsa98koeWlH3JKzHXj2a0I
         2b3f+Dgx9tvg//tpSs1ibLt6mRDggnWtLwQ6o9BWMQci4LyUAmGOok8MVxUOI7+8KetP
         RQOSJrVw1yeMKdCC8nPJY5Z8a4mMlC1Y88IZ8oA6lV3t0+51J9IDy4gBhC/CHIqyaZZH
         vjLXbXkhLX36dNb9BYkOjgTGUvM/KUNX9XPUD6E3F0KxB6uQzYIRzML6RD1mL5cJqnYH
         TqrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=0gpMgSol9MGIe33wub9ERub4tDvkTd3iR5br4M8urJA=;
        b=qBHyMdGH0aUHRCwPz4uoB40AUxK69wo7EOfkH3pqV381kGBUEgra/LKsP3UIM222J6
         1USTBeepjSLY2wE/M6bjqvRE8CNfpyJF1SRZ7sW4EZQLHzsbGvJMNy4IE3i486vSUtFu
         PTbOwLn7o+GIt92yykwegrX7qxlIsuK67s4xHOSkLGoITpTiVEyudwfuMDwKKM8ntU+F
         qxfnHzPbqlA+ZTU45Q9/Hyujk/HDPEYDyuHzu/uVrCuhg4bs5a2GeBQROKgKfZzoWfUw
         cG22pRfLLBGj9d+CYi+LfvyerwwU8rQIcL6AaQLbJ69n31gM79JnF+ZenaIUvYUg7Vq4
         ARLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EO8cP3zi;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0gpMgSol9MGIe33wub9ERub4tDvkTd3iR5br4M8urJA=;
        b=itDEQkCeMUD3QfgsT9tcU/pwjwRYL8M0C+VWKylYNF/siPqp3tP6HvVpOyCkAaz+ec
         IzR0Yf1O/VUH7H2qvz3kkzb1BjGKzdqzd1gelxakU3eq1OqrpyO+DqrwSt9EvaMKYaS2
         qBHT1sSDTAyZ6oO4ZycBWDe0ghsB+J2Fkq+ze43CbgEn5CL6MV5wujN4t00liVv9I6YY
         6q15y3Xv3lEWSZJZ76VAXAkLbjkSA0JL87SgVdbul1fe1XIV8oczxKGDGoJ1mjieyeaN
         3Nxmsu8lRDVAyJGHYlXFpA/3Mmv5af0lH8JAiyn5RJx9m5tt+UpQSiWgukTkgdEXzBun
         ZquA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0gpMgSol9MGIe33wub9ERub4tDvkTd3iR5br4M8urJA=;
        b=s3RHZOS22CSB/s3zoETPmRdKeddBhi1f8b03U4tn0OKsNeHfd/P9ChimhCJORNqrXm
         0hl9sLW2oPEWDQu+Lg2aUBk/WrJA0QRYA0QDPXZTAwZIxg4bXg8bDWstW8kSFk+jri8P
         8NhoUdDeKMAgQBtcoCluXLVi13EPvrgRGFQypJ6Wm6fR8xs83+4fc3mxM3iFXLGgtj2i
         4F8+UP7yLZXk7DpLKSxCNF03X3zQN8NkEhbrMO4MIiIKuG84YdRGg3bWFUeDvfhdhqe/
         a9993kBA+VuNDSegX5MB5GwALMnU7TiqBaCzWAJJK8kGrv6zQHJmFEDTHr4yEk7v4805
         zlgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0gpMgSol9MGIe33wub9ERub4tDvkTd3iR5br4M8urJA=;
        b=EBT/TiUyuywskp8bbjs73qxnJ3WO2lfJ5lr7qk8ah/gTklQGcu/9DS9I6XLcZG/RRa
         UuTpuGkSNoELNcbsWKL/HEuGakSPUypgxKn4MUbr3jiKYLxJa0aqcrU9vjjNLOCSNKk5
         ZM3e7uYe5jfjcCQI3PAfn8hrI2GMKc49RK3TEyDLz1JWbjNhlrH2j8WWLQ7Md20R1Ehx
         DCE17yo2FwEZCzn4U29Nv6VIP1CMZNTlbeGDQC+NkHWwmEQdtXFj0SMzIszt7Iw58hc1
         IMhBlsxXxrD15J6//X+Dfsigl8kWvHtzz49Rhdjz0a31TFfIMn2M9BFvaExOhFHXHvfE
         gTmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SCALehB20I1Ku0QemUoYMCheD08abGlaGTZbnXNTx5PjRcm6k
	MKDvfWU6SgmmZjrvFtfNzxY=
X-Google-Smtp-Source: ABdhPJy2pyC3hQtd7meTSVikkVSnkAbkA8ZcLQMxyFjrDf/DBmxzE4cdEpe9RQa8jOmA//liaOgrMg==
X-Received: by 2002:a0c:bd12:: with SMTP id m18mr4121333qvg.178.1594725335109;
        Tue, 14 Jul 2020 04:15:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2343:: with SMTP id i3ls7823354qtc.8.gmail; Tue, 14 Jul
 2020 04:15:34 -0700 (PDT)
X-Received: by 2002:aed:22ef:: with SMTP id q44mr3791461qtc.333.1594725334778;
        Tue, 14 Jul 2020 04:15:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594725334; cv=none;
        d=google.com; s=arc-20160816;
        b=S3GbWIPcF6Op+HQ2kJxdndimc6zz0lnJu/vSOceBsKPWKczWrzM0/II/MlmSBwqVb0
         P/6GIZmHIno4BnJkDvihEBokSmnxpNnnQIbeqZ9N99UKfNiHGmsCvrJVC2Z6Wz5BcYqF
         PtBsdcU2aQnUnAYflwE9FDckoVW/nzhmElaKT9c7wOkTv3nenUoaPdwyqSKja8nl62ZB
         3rlyx1ZY/MQZLb6jXxHyih5kCjSyE78Ljn9ce38+m4ZnjZi7F0sYN5IwO4SHRAzikNaa
         F0fI9/3BjU4Ho2y+vveKNzvfV+kYARRgUZ5zK5yC2AkDEh1Z46tzZQnMb2XkbfuqxkIC
         PlRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3sxelLKYU4uPXZwq7u6GndiCwDxZdiitpwo4V3Dx4AQ=;
        b=gepK+2mq2ba89pz3bb3LcTWKILAGwqJIY7RFxRRQG5Bgdp21vEj60GqT1dc3tNWBdT
         N0EOerPzfxokZOTy2uxBwDaoKJ+lqbhS9mGbTOGKfOzOkWij3+P4z+iQf+PnYtyquEhs
         driSKp7h48ynmountQzi+QM60uymCgJGE2fUajFWbzGXi9hH9tUVfkCGEIhm2uMU35+5
         AwaVi8l8h+Bpncnigsebm0A63qZMlvtX6Ni1X7fTtTZRUmX4RNUdWC/E+FmnLsEkEviV
         FhIWjVn9uBQALTk2sB9W+DiY59cg8pvXcERBudxFw/LcShWyUU9UaFOOF76yFpT1QjGl
         Ci7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EO8cP3zi;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id j10si75334qko.0.2020.07.14.04.15.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 04:15:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id v6so16849988iob.4
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 04:15:34 -0700 (PDT)
X-Received: by 2002:a05:6602:1555:: with SMTP id h21mr4307279iow.163.1594725334373;
 Tue, 14 Jul 2020 04:15:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200712231050.5147-1-sedat.dilek@gmail.com> <20200713111330.kpppbjbjwwij2rgq@liuwe-devbox-debian-v2>
In-Reply-To: <20200713111330.kpppbjbjwwij2rgq@liuwe-devbox-debian-v2>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 13:15:23 +0200
Message-ID: <CA+icZUUx+VmiKKN3saVXaiSj1PwoskScLrgK-UXqUS7Ce-_ZDA@mail.gmail.com>
Subject: Re: [PATCH] x86/entry: Fix vectors to IDTENTRY_SYSVEC for CONFIG_HYPERV
To: Wei Liu <wei.liu@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Alexandre Chartre <alexandre.chartre@oracle.com>, 
	linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Jian Cai <caij2003@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EO8cP3zi;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44
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

On Mon, Jul 13, 2020 at 1:13 PM Wei Liu <wei.liu@kernel.org> wrote:

> > With both fixes applied I was able to build/assemble with a snapshot
> > version of LLVM/Clang from Debian/experimental.
>
> I think the issue found here is independent of the other. This patch
> shouldn't need to wait for the other to land.
>

> Reviewed-by: Wei Liu <wei.liu@kernel.org>
>

Submitted a v2.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUx%2BVmiKKN3saVXaiSj1PwoskScLrgK-UXqUS7Ce-_ZDA%40mail.gmail.com.
