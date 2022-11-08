Return-Path: <clang-built-linux+bncBCMIZB7QWENRB6N3VONQMGQEEPPO27Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6574E621F90
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Nov 2022 23:53:47 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id a11-20020ab0494b000000b0041123ae77cdsf6952454uad.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Nov 2022 14:53:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1667948026; cv=pass;
        d=google.com; s=arc-20160816;
        b=ch8q1liSEj8lQ/kHvBgLdjZGKWszDROYJKBkEzrSOrSBxwDfIfZPyPYLjYUTVFCv3N
         ZdBj0MC2NB67R3UXxB2fU94mUxAfIbDu94y2hHlH/1L7SpwrpbVrmlTP0P/N3m0KXG+Z
         7hMV0ymR0F/59abofMASEJuU9OMbXly66eEqsJ7iOVcBjcHuLuLa3M5bjfheutpMV1x7
         lvts5UVwA2XJxHLLM39p1XXIpSlNWBH6h3d10xAshb3NL45T0D6bbfuedKKuIFdEUsiE
         nppyRLIq/9RToSaha2gZczdZQEtb+FD2PVL6wPRpvl7yU6ZMqwNLl8u5Gh2EHczPLm9L
         5wjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=O+M6Fd0p4Rqbamz+kwzVSKvNwCGBBeLqqfPJrSCkxyU=;
        b=HDgYcmZTjxdCFzy0CfY/SKWWNDCfc1RnvJfW3yBeI7jTpTlqH6h2kunMlUWjrKLYWI
         Gc4ttWmZ5f7y659/vU38DmV+AQWAkofqnrfzn79mcmctXsp2nhs3Ckd/PPYa1cDeSqzB
         Y2X750AhjFcD9Cke0rmH6Po4+t3G6540FX4R+wtt4CKUqbGGnUSLNjva4KTb2MznZLVX
         aIlyXF91c0GsyM0jmxzlTdBE34AxUNsg15C8sFhrLTKhWndBVzAtE2CSo7JaiO2WjiZK
         zR2ogEsmzyUa5SshmwjTIkRnVQu2wZpWzCFsM//XSvHtePBkGz748aqYanPhxfIbtO99
         nJpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=i4I18xsZ;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O+M6Fd0p4Rqbamz+kwzVSKvNwCGBBeLqqfPJrSCkxyU=;
        b=RoD6tGtxcF6NqLvgGYh3D6uFhYARNssVv0x04XWSDCuE5/9YUG+2YkERALxxA3OUGa
         rBesnL+EhoG54FLzTj4L0i/5jov+9Fpd0LwNNi5GsiQQ4tq+A2FIf+GGjRxHpSRjZF1F
         ZDE95Yp9omkHYTcRKcifuVAsWm/R7gASSjEFF9nHNH9ZZ5ZMT/ojm/1BfBMBAFPxqniF
         pDL4lEiHmYcLa2qcsCDCRynn60W8Ot1M10v5wwEkKvyeFlNkBjyRFtX6dTiDuSaLtFdK
         JtTQQS+QZ0MySenqIyWnl5R5oXUCy10w49bOpefhosx1eA1euwPrKJ6RdAXCsBl8R/mD
         p7VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O+M6Fd0p4Rqbamz+kwzVSKvNwCGBBeLqqfPJrSCkxyU=;
        b=6E3uRTJg94jvCAT0sm4iynp9QoHFFm0jy4As4AZbiM33/i2YZ33JJ6dKNNAyAF1Gbs
         6nLAhIgnHp5f6EvWkwekEv7/C7BHE/KOEiuT0pae9sp02iMrgkoxRc8FF+JO4xqNZpbW
         kL7Nd8WvpWyKhuZIR7soVy5+4bwd8ZmJ6DOsOeMnqNrqLKEPlANmMq+RfMLHwHRDMQbU
         itEOmuQvdlAe9oWcZwuCfpu8ZsBtPDSm1HoRmyhy6wM9l69H1CDGD+YQ8qfwo0xUkGRW
         j8iAE26piltxpQe67FuMkZIBFJFGKHl7MBMvExzWeeH7ApKe5ru/ti4ApZmJ28t+42Sd
         xdbA==
X-Gm-Message-State: ACrzQf2xbLRCr+7PX5C7MD2RshxB2Bn7tZ3EsyorsQFM8JeKYA4oDwHW
	JEfDfv/MhJ6zxvSF5GVrz2M=
X-Google-Smtp-Source: AMsMyM67UOD+KzwN8iivcYRj7jaIRrdNv7CSo/Mu5JxyyOSSKFAlk0gH8IEh1J4xuKMOJ7t8epUmWg==
X-Received: by 2002:a67:c083:0:b0:3ac:df16:c1df with SMTP id x3-20020a67c083000000b003acdf16c1dfmr26188173vsi.60.1667948026023;
        Tue, 08 Nov 2022 14:53:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c883:0:b0:398:a64d:75a7 with SMTP id v3-20020a67c883000000b00398a64d75a7ls3445609vsk.0.-pod-prod-gmail;
 Tue, 08 Nov 2022 14:53:45 -0800 (PST)
X-Received: by 2002:a67:e005:0:b0:3aa:1eac:6879 with SMTP id c5-20020a67e005000000b003aa1eac6879mr30316173vsl.8.1667948025452;
        Tue, 08 Nov 2022 14:53:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1667948025; cv=none;
        d=google.com; s=arc-20160816;
        b=r5j/3O8j5fBH31QmQZ/h4tjeFJJFDZL8IoGF9oPw0I4gAww41d5a1aGc/DFdfZE8/v
         J33pM6K07BuxY5t2cQB0lEN5gRWUeVLT0oAJVvLUaRGWOoBA9zBYHKcadhncHzddbASh
         zinNCt21rx181nCje+DJAprJ4eYisD/bENrGmF86MIe5k8I2n95I5XAXHVD8LNRi8I9T
         RabKkvrISSGjGztVK0IrKKTAsJujU87dFMGiAFiRWhHskTSVNaOR8ICSSDjXQtW7FxNb
         sZjzuMoQvVZVOZBo9npRVRn+GQFgyAZXqKFJXl3Cj1J1uSnkXfohG63+wBf/hsU+fXzs
         /jQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=knuha/0L3whh8nT50lR2ItuT1EONyZVV+ouqJ68QHZA=;
        b=p0Xd6+JfJ6ocqlW1zj/sgEIZFjp+OEPLwH5Um9EXVd/NK2cmNScMvCNck20yr7vLWP
         ymeGCiRsTRbvsIVCoqlGhs74kplNSBVVwOgDbZxlwzXG034CquVjgvOO9uBZGzxuQs8/
         lPMuoOhtV9HC2d+mRA/dTmtDC+klN7zsxwSfFT/Zt+l/bkNtLW+6Y7qyMCIq6yihnq64
         aEY5yCENUoKMvDjc6VRNd0wSYorce/sLDosoe99angKUySNQ1BdhZYGQDxKhcUwCyV3I
         yQkaHS6ZOwtUvwKO1aX4x9OgVMh7YL0hbotSBWLkzIDY3+YOc/ruzAJ51TIe2yGkl6eW
         lRlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=i4I18xsZ;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com. [2607:f8b0:4864:20::332])
        by gmr-mx.google.com with ESMTPS id l127-20020a1fa285000000b003b886bd383asi591850vke.4.2022.11.08.14.53.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 14:53:45 -0800 (PST)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::332 as permitted sender) client-ip=2607:f8b0:4864:20::332;
Received: by mail-ot1-x332.google.com with SMTP id r13-20020a056830418d00b0065601df69c0so9203594otu.7
        for <clang-built-linux@googlegroups.com>; Tue, 08 Nov 2022 14:53:45 -0800 (PST)
X-Received: by 2002:a9d:62d8:0:b0:66c:4f88:78ff with SMTP id
 z24-20020a9d62d8000000b0066c4f8878ffmr23580029otk.269.1667948024724; Tue, 08
 Nov 2022 14:53:44 -0800 (PST)
MIME-Version: 1.0
References: <000000000000dc81b705a0af279c@google.com> <000000000000564bd705ecdf291f@google.com>
In-Reply-To: <000000000000564bd705ecdf291f@google.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 8 Nov 2022 14:53:34 -0800
Message-ID: <CACT4Y+bnN7oZp2WJf+Jcx8+de1roOdLB=f_Zu+0H4UHEkfcO8A@mail.gmail.com>
Subject: Re: [syzbot] WARNING in bpf_check (3)
To: syzbot <syzbot+245129539c27fecf099a@syzkaller.appspotmail.com>
Cc: andrii@kernel.org, andriin@fb.com, ast@kernel.org, bpf@vger.kernel.org, 
	clang-built-linux@googlegroups.com, daniel@iogearbox.net, davem@davemloft.net, 
	haoluo@google.com, hawk@kernel.org, john.fastabend@gmail.com, 
	jolsa@kernel.org, kafai@fb.com, kpsingh@kernel.org, kuba@kernel.org, 
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev, martin.lau@linux.dev, 
	memxor@gmail.com, nathan@kernel.org, ndesaulniers@google.com, 
	netdev@vger.kernel.org, sdf@google.com, shanavas@crystalwater.ae, 
	song@kernel.org, songliubraving@fb.com, syzkaller-bugs@googlegroups.com, 
	tglx@linutronix.de, trix@redhat.com, yhs@fb.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=i4I18xsZ;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::332
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Mon, 7 Nov 2022 at 02:48, syzbot
<syzbot+245129539c27fecf099a@syzkaller.appspotmail.com> wrote:
>
> syzbot suspects this issue was fixed by commit:
>
> commit 34dd3bad1a6f1dc7d18ee8dd53f1d31bffd2aee8
> Author: Alexei Starovoitov <ast@kernel.org>
> Date:   Fri Sep 2 21:10:47 2022 +0000
>
>     bpf: Relax the requirement to use preallocated hash maps in tracing progs.
>
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1232e176880000
> start commit:   506357871c18 Merge tag 'spi-fix-v6.0-rc4' of git://git.ker..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=1b95a17a5bfb1521
> dashboard link: https://syzkaller.appspot.com/bug?extid=245129539c27fecf099a
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10940477080000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=177e8f43080000
>
> If the result looks correct, please mark the issue as fixed by replying with:
>
> #syz fix: bpf: Relax the requirement to use preallocated hash maps in tracing progs.
>
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection

Looks reasonable based on the subsystem and the patch:

#syz fix:
bpf: Relax the requirement to use preallocated hash maps in tracing progs.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BbnN7oZp2WJf%2BJcx8%2Bde1roOdLB%3Df_Zu%2B0H4UHEkfcO8A%40mail.gmail.com.
