Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBBPEM77WAKGQEOLJR42A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CA8D34BE
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:01:01 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id z1sf3486478wrw.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 17:01:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570752060; cv=pass;
        d=google.com; s=arc-20160816;
        b=A8azhYWiHYWYgNCXLlAJSQFz2fTPUHLLZR5KrEFri1EFMpRDjgPV3+oPKXa4J9ejWM
         Ieyin8vNqN8cnO1iUr5pjWXMd/Od0DVgBxkevo9M7rwMh+7FCNAm8/V9Zx2SS84eJ33Z
         4LKROOccmORi0EdA2K0VocZPBwZ334MC5ZjkMAzB4l0DWrYZwD5Wh09Qm7NW1PpDGRhu
         qBI9V5fXCyTkRVw7mgNieMDdDXFI0ueOM9UIVlRrdNGYFfp3c3Vm3JFucmP1t+5IlQsB
         +AtfHcfskji7dfyNsADuXLUq3EQQDTWhtvQLhXXt8kgvZiBs4NiZi62JPU3l2EPz7MPY
         a3lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=x2/DPGBzyyshQTz2kSvlKsXKgP6/MsjQtvZ5BtO/oso=;
        b=U618hqP5OujwMxGDEP7GgRBMLIcQEhKIMVdj/bN44kzI8lBO+gJh88pIDVRkFqnVRr
         q2qWdRd+ENbBXeS4LwFT4Cn8rFiUpZNCM15iYnUBq45OtwRuqM5iWdirIGAxRm6H1dnK
         iTaLtfiWMKNmOiRRCqUoF0rpEEp75qbccCnQJ+8EFeG5PhzAA6zVOqz5AsCK/Fi2IohE
         tE9QvzgusRBfJdQmnxWexM/Kotv+sRPggQdwrb03s0Ee62uXPFBLpYq9hSdkk56MJ6HG
         pjhgI6wo+Vz6nClKk1PNpmIcruo8tnmWZT7QB7y4mcgueAkUAks5NRWfJfPVu0nuyTJ2
         dtqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x2/DPGBzyyshQTz2kSvlKsXKgP6/MsjQtvZ5BtO/oso=;
        b=dDkXt8ojoSOptm+wls+aJFWXpa3cCVZjVviLa0yZtOO9zzC+MMYq8IzOaF4SP/zy5x
         utjGZBL8WtAYFBsmNAPZ2ttaQnSUmzAGBCSs37lql3UyoSIjA8/thh6byQPGJDMoB1Bs
         P9ajiPeOOUEYG+6i1t9lxCIYxtDjyTi60ZxarRg3QiHos+Kg/raBfO4VxGAt1mGWEgk0
         jFx44FyXC3fxiurbZnwL2L3riwWNIRuPpXTHBSFSgU7o4x9Ej9yftKk7gtLYGgu0S9zu
         Vwos0QFOCbDWmvzMjmGZttFWcJzgUjYv6M3Kq+aGkrHrxoQSV8bFErKtKPqgIjLm47yg
         wVaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=x2/DPGBzyyshQTz2kSvlKsXKgP6/MsjQtvZ5BtO/oso=;
        b=aeGvhs7gXHBBtaB7Uh7QbRNFvpaIC/NFi4EE9riAr80hqIYAtnWzCGS+G8ugs4Ipf+
         gLBgEHs6b6b3aWMaibfGX94ekhosGkNXJMsK2t0exYmNlrAootq7pTZz5f6hCel0aDSp
         2xoAL0AsTkFa9qFSBjTxsZF/SnTuhDKtLfWCpTtgst01KLTtL9dmo/OqxEMivA2qql24
         yqblxwD+4c7SQC4TCyC297fnCrrxsBlk/RTYiYnLC5kyQcH0FvIfo8SQZlH6k5xkzr3X
         khLGhGPxooN7ORAcUW/CO3oeUrGKcktpddK2qJb8AOmrciEpXv0Rn0iTaj/mxOCVIhLm
         Wp9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU6WPW9TL5mbL3aEesw1AFon9EESyWvlOMg6wccpWl2Neup8YWD
	okKFdr8EfCXJCDcqfJtTiCI=
X-Google-Smtp-Source: APXvYqyVQeGRud2Sdp9iOPZscXz1kyNzaecrPd/Cy0bzBKfGOWc5ZGmiAFrcgBYXVE29RvRunriKpA==
X-Received: by 2002:adf:9f08:: with SMTP id l8mr10096988wrf.325.1570752060858;
        Thu, 10 Oct 2019 17:01:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb8a:: with SMTP id t10ls1937356wrn.16.gmail; Thu, 10
 Oct 2019 17:01:00 -0700 (PDT)
X-Received: by 2002:adf:ea45:: with SMTP id j5mr5850143wrn.392.1570752060427;
        Thu, 10 Oct 2019 17:01:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570752060; cv=none;
        d=google.com; s=arc-20160816;
        b=HLFptwVbR/4Z0GcYNBsfBExKUK3iuLt0VFp5ANYgafJ9ej8h0qzlXeoy2z7ETcLeFw
         9UUvOmeh6bG4Wf4Icf53r9EsiYtJ9CVwQcIViS9k5iIJq9MaMr3frJyuLPD/Y9Bb+WNC
         2AgQYhm43KJI/1VXi/im4Tl6LRosW1D/oVCktRyal0MYOlKREWBrVeHOFFUsglfSxiH+
         t9gxVOdrt4wSe8NjbAgV4Teg7U6sl+JSw0DCzPFN/pdpqeGOA4gdCdEJ/Hkhn9VpfsBf
         XKmFjVsn6H2NmI2ZqqJdHCxnxO+yPRlphKmD1WSO43Za0KC207GlFEYrFW+K6i2vkfA8
         F8iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=IZ2hR9swRo6csW6YmtDzIbzdQ8++e3g17FJ7zba6SDw=;
        b=TPoSaE2CjcR6nW29aB32JPmY9MBTNLbifdMxM0JKZqK8HD1LP2m4c3L+WySjcQoexM
         aecxAY561G4/VLekz0BT2YXQiAGsRXnJv1C80LnAo9RooZq0c7dHkcZCp4Uc+neerntj
         UZ9EAKHRPCHwkv/3pJ2qjiYjvftObsvqXDB1iSp9/EFy5+MFpXFVzTp9MWKHeVUXhpv1
         yq79GsPQ11UUXvRQW1qyJs6QyLiM8jboA4Rqn1kSKT43ivj6UWIxgWqCsu0MsDDrMRLL
         Rrm1aamhJv7M4PbNN2iKhmMW01K7l20Pkrvzc9zun+iBQVjsz9odYr31RzcCd9SP2ByE
         wODQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id u15si394329wmc.1.2019.10.10.17.01.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 10 Oct 2019 17:01:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from 55.249.197.178.dynamic.dsl-lte-bonding.lssmb00p-msn.res.cust.swisscom.ch ([178.197.249.55] helo=localhost)
	by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89_1)
	(envelope-from <daniel@iogearbox.net>)
	id 1iIiMb-0002Th-3f; Fri, 11 Oct 2019 02:00:57 +0200
Date: Fri, 11 Oct 2019 02:00:56 +0200
From: Daniel Borkmann <daniel@iogearbox.net>
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: ast@kernel.org, yhs@fb.com, davem@davemloft.net,
	jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com, ilias.apalodimas@linaro.org,
	sergei.shtylyov@cogentembedded.com
Subject: Re: [PATCH v4 bpf-next 00/15] samples: bpf: improve/fix
 cross-compilation
Message-ID: <20191011000056.GD20202@pc-63.home>
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.101.4/25598/Thu Oct 10 10:50:35 2019)
X-Original-Sender: daniel@iogearbox.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as
 permitted sender) smtp.mailfrom=daniel@iogearbox.net
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

On Wed, Oct 09, 2019 at 11:41:19PM +0300, Ivan Khoronzhuk wrote:
> This series contains mainly fixes/improvements for cross-compilation
> but not only, tested for arm, arm64, and intended for any arch.
> Also verified on native build (not cross compilation) for x86_64
> and arm, arm64.
[...]

There are multiple SOBs missing, please fix. Thanks!

[...]
 5 files changed, 218 insertions(+), 99 deletions(-)
 create mode 100644 samples/bpf/Makefile.target
 rename tools/lib/bpf/{test_libbpf.cpp => test_libbpf.c} (61%)
Deleted branch mbox (was 9f35d1d0c8f0).
Commit 9f35d1d0c8f0 ("samples/bpf: Add preparation steps and sysroot info to readme")
	author Signed-off-by missing
	committer Signed-off-by missing
	author email:    ivan.khoronzhuk@linaro.org
	committer email: daniel@iogearbox.net


Commit 1878c1de4607 ("samples/bpf: Use __LINUX_ARM_ARCH__ selector for arm")
	author Signed-off-by missing
	committer Signed-off-by missing
	author email:    ivan.khoronzhuk@linaro.org
	committer email: daniel@iogearbox.net


Errors in tree with Signed-off-by, please fix!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011000056.GD20202%40pc-63.home.
