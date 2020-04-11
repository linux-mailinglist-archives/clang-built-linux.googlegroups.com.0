Return-Path: <clang-built-linux+bncBDN7FYMXXEORBI45Y32AKGQEMXYU4VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B88511A4F2A
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Apr 2020 11:32:20 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id p6sf3618780qvo.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 11 Apr 2020 02:32:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586597539; cv=pass;
        d=google.com; s=arc-20160816;
        b=nZUrnOMswJFGMHchASUPU1GePsNqGy8aTGIohIjZRSnLFFlZ9sr5Z4xcsiZK4jOY2M
         1hsNIcqkKkphEjieoeT1TYpCaewqPKyUY3rwlf8hjwesbGBwWMdySRDr+Y4pbpwCvX/r
         CdhaLbgzeoy1m+yu5VZ/GkzNAXV80vk4XwMXf/WdXvojsAcLU6Tv/uCYnj5rRBapPZPA
         T21Go+rf0qtFRiVUhjCMB+iiTCGfksJVThU+GOnWddSOHK9lWkXWIehwky3piWRwCemQ
         5YQY8AftrMVLCtQlGIG5e022rrvac7FnisTP0Ozw37wGg7Qv2dwpa72lb6iYbzR7zdLT
         //6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:mime-version
         :in-reply-to:references:cc:to:subject:from:date:sender
         :dkim-signature:dkim-signature;
        bh=vaglFfANoKrlN+obirzxAj+DEV+T1Ysu4N4ANl3MwkI=;
        b=zfaPtDaCIwNPCeteI7NN4muyrGjHZYNlR+/AhZFjEcf75beKdJ367I2YfMQHjVr+uR
         cC5KNsggnaP6EcQGA+ANi+SyEpfvSpmkVHs1Wzwne7hM/DbdeO7WY8LbSZzOoUz4X2H2
         v4GxSsOqV2bL44QXPe33j0R+gP3soqBRC2Wa3HVserTKT7GEpCcqq+PjU3/P58hyptdK
         ZAoGDA2X2nKauP8orBr/GOj94BlkQi1YrlE2Ullgl1AQw7bQOK3BMKChvK5m6f/v8Wqy
         qU99mRhfaspdUOPF9/dQx8vrReq51nUoH5zdaU9P2iajAh6pQsd3dfGPraum4FHxdaRZ
         Rsng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Da+d4aFr;
       spf=pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=npiggin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:subject:to:cc:references:in-reply-to:mime-version
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vaglFfANoKrlN+obirzxAj+DEV+T1Ysu4N4ANl3MwkI=;
        b=Gzp0UIvM5qQEXcnKyDdc2o4eAz+MrJz4mhTDKhZbgFZryKBvOEo3wWT8gYI/O5ITUZ
         tlvAXFqvUslMzDLZRqN+uvgnfnbg9Rgew5LXbGuIi1r+3Os38Y7b0OERjuv93gbOmz7O
         oFpjtX68rmHKPaOaWdJtaLzf41oZVeHeKauEEO6NOFDKVNdhcGzvPx4yc+DvgRa0EieR
         MVYaVvHKaYZa6gJYjN3tbYf9F5XVvMkmuCVHUkCJmaLILKEWZyEB5lcIfkXXuzgnnXGy
         SmEYg4JyrzJC7aA5zwwERzsFNmDQmNzm97zUEgXeAjCO+GvmgJdEOg3RSm9LbgQFv1gg
         xK1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:subject:to:cc:references:in-reply-to:mime-version
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vaglFfANoKrlN+obirzxAj+DEV+T1Ysu4N4ANl3MwkI=;
        b=AWj6LUc6Jjm746ZjUVIcpnLGb85Y4ljesOH3Y+KHDh3swUf/QxKkUfGhvCTxZdrRXp
         K5HkbIZnMoLpPZT1u16AyJOwJoYNft+N9TKjflFHtWpDPWUDBRNVM0nw6tkfPuqnVF5+
         9N6bkfUVnlYmzmY97Gu95qu0KjoRL+mNyXMCvDej5ClcECMJqTdkT6rHOqV0LWLPEp8S
         D+X/oAdUafm/+LW9kwqUe0aUPLFxMQDAqCbLnyGSELbKWCWpSHFAmMI8okcbFQUlsOPr
         y9FkvFSpAp7OhBO4IrQ/MNK5u3sb3ok4T6lVPlz98T3n2xeLzP6AZOeHA8UL3AEGJFbS
         r1wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:subject:to:cc:references
         :in-reply-to:mime-version:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vaglFfANoKrlN+obirzxAj+DEV+T1Ysu4N4ANl3MwkI=;
        b=epH0i13NIqhc6JZkiPLUCN1CqUQX0veFE8cPA8KkM9nF9LNAQnwgXbarYMvXIhG7FJ
         cmf691trMxjWvBh2OfvExxxUTS95gyP3PtGxEGtXVxA+pFls0VYkjhHMGnB05rHDn9yy
         Jp/WIG9HsBv/ZdZR3B5yyY2EnaZX+7tMStBW24fbvzR/kZVvjk3pXJdZse+qQDCyOL2u
         hh7XDt8wmmBhGggZI8x/fMGuRjCgArnmuuzbZDfdIcS5YXS9yfCtTBuxKLSGyAQdqKB4
         lw2YlPKmeBJ6i/b2I2sgW0EOm4qkpEpFWMHrxdovowyOPacZOEJ+rHljVe/Nl4TWULkl
         dsYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubS+Eet31lyqx4SksiVHieIWo9wDSOba0CpU7xiS4Xsaxzh5bMP
	gqfOEPHr2ZDmrlDHN2bbJzY=
X-Google-Smtp-Source: APiQypJiIJt73Fi6PNMXqMqFBYfFxzJJMrbS4PoLHhhWK3W1W5IdTMLnVhuKFMwz3Mje2lQLzNBkbQ==
X-Received: by 2002:a37:5284:: with SMTP id g126mr7879600qkb.51.1586597539360;
        Sat, 11 Apr 2020 02:32:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:34c6:: with SMTP id x64ls6978493qtd.5.gmail; Sat, 11 Apr
 2020 02:32:19 -0700 (PDT)
X-Received: by 2002:aed:3fa2:: with SMTP id s31mr2837820qth.87.1586597538983;
        Sat, 11 Apr 2020 02:32:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586597538; cv=none;
        d=google.com; s=arc-20160816;
        b=Iqc7WHC5z0WqYtdA25GIulY6vcMHkfKHgQ5ELn5fGaA/yZjWTRqMBIySL4eLZFvo5n
         nSzkHu8Q7BB4KgmLNreGAaew7oSb8JV2df520+fg1RLT7bo7Yp4yVsX6BUgJLZ8NCfL8
         5OlM31P5nm3q7HtDVITZzxbOY3N+pk9yPxADJe8lSbnZB4wHOQcNTgx503eRzumYpYcc
         RFy73quVOSZCFAdFaou9vjemI+5/fD62QdtNjISuC2pWh+jxBmL5rs8n7m1rla4Zi+T7
         EV3LcU89MzX5rvEndVEl4h1vLBhNHEtTP0NZv/sbTTOV/idYsEfg7HF9Mp6P0nArtk10
         AoWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:user-agent:mime-version
         :in-reply-to:references:cc:to:subject:from:date:dkim-signature;
        bh=d3Tf2jlkAJhQezW/Lmoo2HtN3Pu6mLR5iQRSPNHGKn4=;
        b=sByjGtPsn7CXpfiiS4/ectpiALaaVSW2xLXUCAUUHcJeAPawsWbuDMpc8m/i1UJXN1
         GRRBMPZTPgujcZ0kccWN+5gR3RZZHQmKUAxk6TZKB9UO8ZSJCjee/3Oov/P/YW2ldZjK
         Uoisgn1X1nIK2cosiMxW4XhXoL4W1Akf4gJs28T3yKWE2Y1W8y32PhYN8ms6CQp5tkkL
         m+kTknphiF6/szr8DeQqalsA7bNYidKi3h8Qm6VsrFOue6gU4VJ9p+StefBdaSJrMcI+
         MD0QkpHCLGwKSf5Yz/bckEibXSLidUZVCf7kRYgT+A1tsAZGCw1tjHSlualTyJDY7yyn
         cFQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Da+d4aFr;
       spf=pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=npiggin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id e11si297199qtw.1.2020.04.11.02.32.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Apr 2020 02:32:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id d24so1483019pll.8
        for <clang-built-linux@googlegroups.com>; Sat, 11 Apr 2020 02:32:18 -0700 (PDT)
X-Received: by 2002:a17:902:8688:: with SMTP id g8mr8752120plo.268.1586597538072;
        Sat, 11 Apr 2020 02:32:18 -0700 (PDT)
Received: from localhost (60-241-117-97.tpgi.com.au. [60.241.117.97])
        by smtp.gmail.com with ESMTPSA id z8sm3781349pju.33.2020.04.11.02.32.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Apr 2020 02:32:17 -0700 (PDT)
Date: Sat, 11 Apr 2020 19:32:08 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: Boot flakiness with QEMU 3.1.0 and Clang built kernels
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org
References: <20200410205932.GA880@ubuntu-s3-xlarge-x86>
	<1586564375.zt8lm9finh.astroid@bobo.none>
	<20200411005354.GA24145@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200411005354.GA24145@ubuntu-s3-xlarge-x86>
MIME-Version: 1.0
User-Agent: astroid/0.15.0 (https://github.com/astroidmail/astroid)
Message-Id: <1586597161.xyshvdbjo6.astroid@bobo.none>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: npiggin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Da+d4aFr;       spf=pass
 (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::642 as
 permitted sender) smtp.mailfrom=npiggin@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Nathan Chancellor's on April 11, 2020 10:53 am:
> Hi Nicholas,
> 
> On Sat, Apr 11, 2020 at 10:29:45AM +1000, Nicholas Piggin wrote:
>> Nathan Chancellor's on April 11, 2020 6:59 am:
>> > Hi all,
>> > 
>> > Recently, our CI started running into several hangs when running the
>> > spinlock torture tests during a boot with QEMU 3.1.0 on
>> > powernv_defconfig and pseries_defconfig when compiled with Clang.
>> > 
>> > I initially bisected Linux and came down to commit 3282a3da25bd
>> > ("powerpc/64: Implement soft interrupt replay in C") [1], which seems to
>> > make sense. However, I realized I could not reproduce this in my local
>> > environment no matter how hard I tried, only in our Docker image. I then
>> > realized my environment's QEMU version was 4.2.0; I compiled 3.1.0 and
>> > was able to reproduce it then.
>> > 
>> > I bisected QEMU down to two commits: powernv_defconfig was fixed by [2]
>> > and pseries_defconfig was fixed by [3].
>> 
>> Looks like it might have previously been testing power8, now power9?
>> -cpu power8 might get it reproducing again.
> 
> Yes, that is what it looks like. I can reproduce the hang with both
> pseries-3.1 and powernv8 on QEMU 4.2.0.
> 
>> > I ran 100 boots with our boot-qemu.sh script [4] and QEMU 3.1.0 failed
>> > approximately 80% of the time but 4.2.0 and 5.0.0-rc1 only failed 1% of
>> > the time [5]. GCC 9.3.0 built kernels failed approximately 3% of time
>> > [6].
>> 
>> Do they fail in the same way? Was the fail rate at 0% before upgrading
>> kernels?
> 
> Yes, it just hangs after I see the print out that the torture tests are
> running.
> 
> [    2.277125] spin_lock-torture: Creating torture_shuffle task
> [    2.279058] spin_lock-torture: Creating torture_stutter task
> [    2.280285] spin_lock-torture: torture_shuffle task started
> [    2.281326] spin_lock-torture: Creating lock_torture_writer task
> [    2.282509] spin_lock-torture: torture_stutter task started
> [    2.283511] spin_lock-torture: Creating lock_torture_writer task
> [    2.285155] spin_lock-torture: lock_torture_writer task started
> [    2.286586] spin_lock-torture: Creating lock_torture_stats task
> [    2.287772] spin_lock-torture: lock_torture_writer task started
> [    2.290578] spin_lock-torture: lock_torture_stats task started
> 
> Yes, we never had any failures in our CI before that upgrade happened. I
> will try to run a set of boot tests with a kernel built at the commit
> right before 3282a3da25bd and at 3282a3da25bd to make triple sure I did
> fall on the right commit.
> 
>> > Without access to real hardware, I cannot really say if there is a
>> > problem here. We are going to upgrade to QEMU 4.2.0 to fix it. This is
>> > more of an FYI so that there is some record of it outside of our issue
>> > tracker and so people can be aware of it in case it comes up somewhere
>> > else.
>> 
>> Thanks for this I'll try to reproduce. You're not running SMP guest?
> 
> No, not as far as I am aware at least. You can see our QEMU line in our
> CI and the boot-qemu.sh script I have listed below:
> 
> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/318260635
> 
>> Anything particular to run the lock torture test? This is just 
>> powernv_defconfig + CONFIG_LOCK_TORTURE_TEST=y ?
> 
> We do enable some other configs, you can see those here:
> 
> https://github.com/ClangBuiltLinux/continuous-integration/blob/c02d2f008a64d44e62518bc03beb1126db7619ce/configs/common.config
> https://github.com/ClangBuiltLinux/continuous-integration/blob/c02d2f008a64d44e62518bc03beb1126db7619ce/configs/tt.config
> 
> The tt.config values are needed to reproduce but I did not verify that
> ONLY tt.config was needed. Other than that, no, we are just building
> either pseries_defconfig or powernv_defconfig with those configs and
> letting it boot up with a simple initramfs, which prints the version
> string then shuts the machine down.
> 
> Let me know if you need any more information, cheers!

Okay I can reproduce it. Sometimes it eventually recovers after a long
pause, and some keyboard input often helps it along. So that seems like 
it might be a lost interrupt.

POWER8 vs POWER9 might just be a timing thing if P9 is still hanging
sometimes. I wasn't able to reproduce it with defconfig+tt.config, I
needed your other config with various other debug options.

Thanks for the very good report. I'll let you know what I find.

Thanks,
Nick

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1586597161.xyshvdbjo6.astroid%40bobo.none.
