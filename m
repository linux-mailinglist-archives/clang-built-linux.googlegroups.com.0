Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSUPYLWQKGQEUBZKEQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA4DE2147
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 19:03:07 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id 2sf219843pfv.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 10:03:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571850186; cv=pass;
        d=google.com; s=arc-20160816;
        b=LmOZCxdynUPsWn6RHCZPkAoKf+1KuRd58O7VoIRc+mMfvE6B3ucMbzF5nS69TczwEL
         P+A3ZqxTwaadtcggc4zxIK9ah+qKqc/A2d6e5OUF3Z81QPm6GzESLb8tXYokxGJFJnbP
         gxUylDmt3vlgMBP3IVVYqYT2v7bLJQjApLLnR4DXfyVT+g3ldSqfg8VeZS1GjL2kdCCR
         3+ghFJYrV70RVc6k4jR/l7FgUA9nWLKypaO3YTMVY1KqiZgbhYYDl/cqo2zAe0tU6T47
         I6vLxueEBs/EpyPhP5dCA+nUXny9+jbnd9E4lT37MPv6W0FUqp/mZwc8jhJqWtmMGjGo
         CElw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=MdWUZaURzrhCh9gt26Xfu+hhezQ0tHgL3syT5U8trEc=;
        b=GlxW9AJN2vy9XYUquJs9UUwgThSALl10CPo0rxTi1ZdwLLtjs6w/cjNJcGmI/t8c+W
         AwzmBhGJERKoOEeDSt8fFOdVFrvwLy7XgOFPA43zbG2DXmTVRjn8G3+e7NZG+EXOTD/n
         IfZO6GG7eO/Nk0JnKgkzhskiACh4jB27Ymr/Dfwv9ZQ6rOIwkWNbgYV3Jkc4W2jXiCzT
         L/ZaMNytXt39K0eT4fPp3n4tFFeNlnjoBblrdRCpP11/9ip2kbv4YHvUC0s3EcUuoIyt
         4gHZYktqj2Rw+8rq+og02MKQ8oTzVp2n8kcpXPIWchiS5CDGDIIanO6pNsnFZ17UmxRo
         Fe2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N4mOPS98;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MdWUZaURzrhCh9gt26Xfu+hhezQ0tHgL3syT5U8trEc=;
        b=TCFuF6odt+Vfokl+XGpwo/KPrIFNpGsZpb0aGuLxxFWpF3V5Z61FwSFbJ/tqJgBIgg
         zpDdPerds6GSR2qDCWh5lkT3fL9bX5c4tUEWCqj4V/dFnN+Nerj7Z+pLoDtqZ6yfRX+Z
         phVUen0ZG+Tcx3dhiyLNByjs+ghjPumoIW5TpxemrhlUKtHE70xNhyvhs78vXXjYZKSi
         0rdKqE3Y0tnpQsS3JlN0cWuVaf8nEM4lW2rn97ZnJ8pyXeW1THSgPgPg1ab8im/YU385
         A6Da6hYSG+OvSk8LwQQm9ob3x7pYAocsoY7trDGwoT5T/rb6EIBYxpUcwAlY45xAdFZ8
         b7mw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MdWUZaURzrhCh9gt26Xfu+hhezQ0tHgL3syT5U8trEc=;
        b=fM1zU93XCOMAVFaHnDv+OiB7TeplMzRzzDAhd4ABfQHIBKT97JZHxSN/bEq3jbVMfr
         eN5YyaTdRkhmUizwTawCX4URsQLfHVfe1SAY14tqWuT3zuOvf5WgDv8+SpSJ157Nb41Z
         kebTt+SS1aZirdeViwUlyogKXSyeN487YCN8H4zthLO8g3JPLtzesJ34H27vftXt3GEr
         uCAet9/UJEvTSmItFgz8EF5gaLkwaILnhwSulkL1bIJp5eNZPPTXsVULJKIF3+1nXzmn
         edR6i5eObYZycGMJ50obywLuYlDfAdWIG0MWq8QGX9RNC+A4gJWffpr3bkybFqdJ4Erd
         n1qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MdWUZaURzrhCh9gt26Xfu+hhezQ0tHgL3syT5U8trEc=;
        b=K0vLmx35kb+kilLLWNUShY0f/Eb/q2nXLo6QaavnmEjIB8qptF4nnORXMhwau44w14
         G0Z5Tj2p5kkyMoptpI+4zyArdYkyioiT/8+e/trBmx0VolrOXeHdvd7mDDJOe6J6PkU6
         izCBe7FUmiDTLnYEYMad+f14NvdUe31UXjn7+l772fIiYwzjBdfV5OjdVVs8otL1Qayf
         ATqkIPNCzHb85y6OwyAe2gO/qDKBjDuIt27mCl60rN30apnM/hC05qsRkrPyCP5YKYoc
         x0FWD4rrCaDmtUOHi+7SadBQKwOSzc/AeJx86GnLnJRR6eFo22p82Vb9FEL0FUcHNOwq
         oG/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVRxgmr+YftpPH+8pUonJRqhToG2tdXdU1PYnqI3tseKEqxoxQ9
	Hzrz5ZVcDjkbusrET16Vjm0=
X-Google-Smtp-Source: APXvYqycskhRgnbDklad4s1sIPwp1b5vtdndHOuJ4wcSLW4H2LYNWevrwwHEo8EpFdobTSqQNjtB5A==
X-Received: by 2002:a63:3c19:: with SMTP id j25mr11559637pga.12.1571850186122;
        Wed, 23 Oct 2019 10:03:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4458:: with SMTP id t24ls878075pgk.4.gmail; Wed, 23 Oct
 2019 10:03:05 -0700 (PDT)
X-Received: by 2002:a63:4654:: with SMTP id v20mr7673918pgk.11.1571850185645;
        Wed, 23 Oct 2019 10:03:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571850185; cv=none;
        d=google.com; s=arc-20160816;
        b=mN1C4k8lCFFZQAcZEDAXkMJMvPoQImIqiwbPZRhzOrY0153q1dViu49G7Ro9fCtsx2
         g/cb9CHjewzTJG3GkHfxll0tZO6/0okJetkSmnRzI3tZR7IboelJLisUHBEWt1uoZ8Zn
         MtARqOZFN5dn8hTGT+uW5ajBANNulN0p7J+ci9PKRfhvxgDPY4JXRAN1FFmuBAz/VEdx
         BsgQ7PPjjchT1caYQePGxNJ3IEefXuuRiP1LNfMtMwyPpf32y2AvEXd2QMEhCK2KiST8
         bx3eXISyTh6LOjnWjAqLwup+u694BVu/0jtk32LTm3bOXeegAkOTU690BwrRpeuw+u/b
         Xdbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=LNIlo875oLUnbVBAslOcAnj59hqK1kHx858TCXge7cA=;
        b=HEk4HK8tDbyFgHuzyrqX+QqFQjtBr5NG50jHUK1fjQ7aI1lnldQ93s7iP/9MJiEJbo
         SbdzSfiXdpumWpWuCmi56APllUHGLTjXcjB/tEmlunJdA+sT//x5U0EQKd/6Hfz0AsUL
         FI8fwjCVEHcIZWZnvkuU0uTRDtsodRHzhRaTVK2nusnU5exz1YUJh5NIzENtM8HVCl/K
         6TKItpccoONTX0JzRLJQIHV0NviGKLcSnE0VaJSpXu6i6VhpX8gEcgQpE1jfHMtjimBN
         Z+DWM1+5yVCUpN/9uADUyKbx3X6K0FWI3fX3q6bBQ/x46lo2Zid7m167+Ln4u4UzClmX
         ewDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N4mOPS98;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id g12si1067448pfi.5.2019.10.23.10.03.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 10:03:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id n48so3116986ota.11
        for <clang-built-linux@googlegroups.com>; Wed, 23 Oct 2019 10:03:05 -0700 (PDT)
X-Received: by 2002:a9d:6ace:: with SMTP id m14mr8170163otq.11.1571850184682;
        Wed, 23 Oct 2019 10:03:04 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id r26sm5705285oij.46.2019.10.23.10.03.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 23 Oct 2019 10:03:04 -0700 (PDT)
Date: Wed, 23 Oct 2019 10:03:02 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Viresh Kumar <viresh.kumar@linaro.org>, Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] cpufreq: s3c64xx: Remove pointless NULL check in
 s3c64xx_cpufreq_driver_init
Message-ID: <20191023170302.GA45373@ubuntu-m2-xlarge-x86>
References: <20191023000906.14374-1-natechancellor@gmail.com>
 <20191023032302.tu5nkvulo2yoctgr@vireshk-i7>
 <20191023104304.GA5723@sirena.co.uk>
 <20191023162628.GA10997@ubuntu-m2-xlarge-x86>
 <20191023163656.GH5723@sirena.co.uk>
 <20191023165417.GA15082@ubuntu-m2-xlarge-x86>
 <20191023165923.GL5723@sirena.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191023165923.GL5723@sirena.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=N4mOPS98;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Oct 23, 2019 at 05:59:23PM +0100, Mark Brown wrote:
> On Wed, Oct 23, 2019 at 09:54:17AM -0700, Nathan Chancellor wrote:
> > On Wed, Oct 23, 2019 at 05:36:56PM +0100, Mark Brown wrote:
> > > On Wed, Oct 23, 2019 at 09:26:28AM -0700, Nathan Chancellor wrote:
> > > > On Wed, Oct 23, 2019 at 11:43:04AM +0100, Mark Brown wrote:
> 
> > > > > The driver should also have supported s3c6400 as well.
> 
> > > > Kconfig says otherwise, unless I am missing something.
> 
> > > Note the XX in the config option.
> 
> > But what about the depends and the help text?
> 
> Viresh asked why the driver was written with s3c6410 support optional.
> I explained that the reason that it was written this way was to
> accomodate s3c6400 support.

Ah understood, thanks for the clarification and sorry for the
misunderstanding!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023170302.GA45373%40ubuntu-m2-xlarge-x86.
