Return-Path: <clang-built-linux+bncBAABBKU66SEAMGQEERBSD2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 592673F051E
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 15:46:25 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id n10-20020a056a0007ca00b003e1686a2a52sf1308410pfu.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 06:46:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629294379; cv=pass;
        d=google.com; s=arc-20160816;
        b=0TDmrwidjg2+Peohn9/lK2Y2+HNn7a9JHFzrkG/a4haWLXhjGxZCAtffoiLA5QMXQZ
         cwRwgbKvxhIr/uRa+2ZKuJlbsB69NO7Wj7Ggr9bQCI/NDouQO3hRuICf/HYp31/HOUYC
         2zr2bg45IVymCjw3wCkUjO5rbJRw2U9XKDjTCM9jgIENrQc/5PnAichzt6ihu3fR/Wpc
         MiinBu2OJNoTdk0kXTxfeFo+p4NoCpCS1oNqZlmbRxlIY6zhig+4iOfco7VRBuYUmuv4
         5HDaLdRZhQMsQRWV+x/Q2x2kb2GHsjtJsj3egoStw/OYLMpl1XPAvw4DTR9eXPcuELJ4
         IkEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:sender:dkim-signature;
        bh=Xkf/IA0Nm8V7Zb25OrSZPFdp/61PQfFSEBjQ2KSuCHE=;
        b=Nga90xSOIt+iIhd5ObiOTCdcfnDWwTlE+BT7FTdThz2lLO3xNPJdZqmVtj5jO5xrTf
         jHkxd1WbIXvhtCk/50ZVlBIlvSOkziOKDufOxT/AYCvniEiCLu+PI77hHfPO2VEPGkfl
         SmMBQrJasZzsSXbdR+5IMzNyORcUWAoEnzAT/LBzS8+bUSS7zZTmol5ksUCyiWwe1Xgl
         UfCDIgBPtX2463HAQOrGzqUxJJP3IQk74k67H9q6q23R4QZIoVkoC6nwLF7oy7i/5GnN
         NtpE+BEd7LnCt9j2AtleKVXGDiR8XtNW7k/83raGI6tdrUrhzzszsZ6nLQp4JcZ7/Qoh
         oB9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:in-reply-to:references:subject:message-id:date
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xkf/IA0Nm8V7Zb25OrSZPFdp/61PQfFSEBjQ2KSuCHE=;
        b=rC8v2mtL9ABGKgHuhcc1WgWqWvN/fNG0+V7Y+jbOeop3Z5aEVCpUo9v75Ej79GtaOD
         gt46IpC/5JPzVd+d07BbHYwwTbVrn67QyCyH53oZBohX/cgET2ie9GGwA3GMYzJ/nu1q
         DT93izU0DSeX2dt02FQu/Ep8Wg3BVw5w4eBYURZJGYrimQnXbvWfWTi1ejV1HvkQoGQc
         ZIVv8GN+fHFn2oCR/WONjO3RYiLnrmpJrawBEaJVaLivvfoFxePgAZDNCir4wTi0kG8P
         e8qmUx7zA7439qIkahqmUMYb9kkWoNhLgpCrCDdCQ4NVIGl2/Qy6JoGqslRsegsRdawQ
         dayA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:in-reply-to:references:subject
         :message-id:date:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xkf/IA0Nm8V7Zb25OrSZPFdp/61PQfFSEBjQ2KSuCHE=;
        b=pE01UTAwGSTvpfkME08XU1Mp22NCCbpQC0Gq0oMAXvct5zLHNmTfSQ9bdmvDzBhetk
         1Kg/X8YIsgsGeiS0RKuQB25hIcfvBCyF+52CVV5L34pY0mQKekrsMYA6++jYEmWJ5oEk
         w08FqL9kMrzjww4oTeEoIDGHA0e9OTcrpni01hZu9IZiyLjr3s2d8Fac+9vW18MMvBYS
         895PdAWuj1hqNxmhrUGlVWXJc7J4+qI0E1q7xAI/xkfQ9YAj6aigzUF+ClgfMpVqk5Hq
         77j7hringOR7SnMN5UHsq3QUvtNxg8IpfNiSKm2z5p46pepIDtr92p+uERsapf7PPtqp
         5izw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TpmmEEmaJHHburkX7B7Da4b4JaPGnyt4xi57QyzJQ38Pr7Ixc
	PVshyOa8yfD1Q/LoIG7I4mM=
X-Google-Smtp-Source: ABdhPJxOk4uRSuNsPafMkOF9yzUBbF7ldnp0buNB9KGejdEfOsuVaDkUvo8t6mDDrI0jcc6lAqFFug==
X-Received: by 2002:a63:ef12:: with SMTP id u18mr8916224pgh.331.1629294379000;
        Wed, 18 Aug 2021 06:46:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4e24:: with SMTP id c36ls1160408pgb.5.gmail; Wed, 18 Aug
 2021 06:46:18 -0700 (PDT)
X-Received: by 2002:a65:6799:: with SMTP id e25mr9206993pgr.59.1629294378564;
        Wed, 18 Aug 2021 06:46:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629294378; cv=none;
        d=google.com; s=arc-20160816;
        b=fMRvtzoAosF/iB+F+T7eZbDXm5vtD6r+XcGzEN+DIIdq8cFV5cVJIhB79ofoevfD6G
         c5YuEH/ONv8wbUpJXWa/0VTn0GN+847yMrEEpn0zjRKhRzan6+fWDf03vKBh7EguXGTv
         XjQzav2MCJxk2a7VnZSVaB0Qo6v1yw5/D26scFuhKFxpIlqvhkBuzd1hrHJb6DyfEzQ6
         VmvQG4ZVBzOzYyDFheUW4jqsjUn44hsOjWXJcjpRZGce48SASRszvBRi6AUWFOx+RBC+
         T3NRasKITUCWwRogQ7LjVI54g7Xm691mybaIPN4sO8R9F2/W4j1On8N7/lHz1SRsuQBU
         i5bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from;
        bh=PWZkh4hDvt0DFFn7ZpMvChfSchHTS5D2auvHkqGhH4Y=;
        b=FzcuZhTJzqWwSk11WwfpjydRSivklzeAVltbczYDFRhLOvoj6WhU/fDbqiA3XG8PSq
         ntT7Okpc7zF/S7gFrg4mbEVPo8d7ClAl6OIsxExdq0kIWmI1TzRAIy/kxwG3nppkUseR
         CYsvRAAEhIMlohjIPAveE5HiW95lo5rXUYbAmI/rJObtDxqw/xqIfSZE4dKj02utBm3/
         KFEzDjakNpHPVu2jQd5BbTwDwExIXEuk/71G8ZyV0m2Ikmnm/135/nO2HCKIKQko3AlX
         bfsPAE8lcCP5nxg/O4lxFVD3U/DRGBqbdqYGvEpU91iUt9VZTglK7O9Xv9t851npaUUr
         dJTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id e1si281516pjs.3.2021.08.18.06.46.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 06:46:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 4GqTgy4TBLz9t2g; Wed, 18 Aug 2021 23:46:06 +1000 (AEST)
From: Michael Ellerman <patch-notifications@ellerman.id.au>
To: Michael Ellerman <mpe@ellerman.id.au>, Nathan Chancellor <nathan@kernel.org>
Cc: "Gautham R. Shenoy" <ego@linux.vnet.ibm.com>, Paul Mackerras <paulus@samba.org>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, linux-pm@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, linuxppc-dev@lists.ozlabs.org, Benjamin Herrenschmidt <benh@kernel.crashing.org>
In-Reply-To: <20210803211547.1093820-1-nathan@kernel.org>
References: <20210803211547.1093820-1-nathan@kernel.org>
Subject: Re: [PATCH] cpuidle: pseries: Mark pseries_idle_proble() as __init
Message-Id: <162929392065.3619265.16135263225670762399.b4-ty@ellerman.id.au>
Date: Wed, 18 Aug 2021 23:38:40 +1000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=michael@ozlabs.org
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

On Tue, 3 Aug 2021 14:15:47 -0700, Nathan Chancellor wrote:
> After commit 7cbd631d4dec ("cpuidle: pseries: Fixup CEDE0 latency only
> for POWER10 onwards"), pseries_idle_probe() is no longer inlined when
> compiling with clang, which causes a modpost warning:
> 
> WARNING: modpost: vmlinux.o(.text+0xc86a54): Section mismatch in
> reference from the function pseries_idle_probe() to the function
> .init.text:fixup_cede0_latency()
> The function pseries_idle_probe() references
> the function __init fixup_cede0_latency().
> This is often because pseries_idle_probe lacks a __init
> annotation or the annotation of fixup_cede0_latency is wrong.
> 
> [...]

Applied to powerpc/next.

[1/1] cpuidle: pseries: Mark pseries_idle_proble() as __init
      https://git.kernel.org/powerpc/c/d04691d373e75c83424b85c0e68e4a3f9370c10d

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162929392065.3619265.16135263225670762399.b4-ty%40ellerman.id.au.
