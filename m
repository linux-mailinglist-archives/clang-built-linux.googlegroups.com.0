Return-Path: <clang-built-linux+bncBDVP5PWXVEHRB67BV2DAMGQEP6U5QEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 579F63ABD6D
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 22:30:52 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id n19-20020a1709067253b029043b446e4a03sf2967085ejk.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 13:30:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623961852; cv=pass;
        d=google.com; s=arc-20160816;
        b=ntyYo7hbTZW6Rcta0TQzN8DSRxGQioC6qaxB/htjcpmmoMY4dz9bNILzaGtYEERdBL
         xkVtqLY4r+8DyJpvsdL9lPSaJ3RalQL9IGj6UBnC4+HTP/NLfeCY6LWdvztVlqfykSrz
         i2OMrMjcAEhHwfc+HfGKfOjW77jiAhcYguNLFnBBP36NALIfdzODOM6OOUCVhSUp+TNI
         2Q3O7M9JSO3G5MfDUOTqtrVHyQRIq8VYsdyJyab7hNULBLtrpJz8g6++NGngrip9dQQu
         5QrJgvYATffvMnjD9JgOsyyRsu58txYxse9Xyg2DU/4oDh/WfXWD07EmRltp1FhmdpGS
         skXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=f9pB4cPhHNfDFzJYD0TYRseh+W2dBlQaCMfKSCXg3U4=;
        b=vUfXvZmfHTeIrKAYkmu1pDQv4xSRtmyfLmTKO942Vt0GKpiTpCRfQBD/jxvStNhmcn
         OfF4Jq0jurk08IkuHJF+40VNqwAvkPvIp9rmNd0oZ7iPOPdALv+0fMGy4+mcHcHTz1Ls
         gCEtVZ6lmBbyYKreUpntsGIc0Q6IxLkYgGnc+NDoSIE3urDQcfx6X2iSFzGOfWBU8/j2
         vhpj0eVotRyan4PLAjdTbY7+MHsGG3wLzGSnx4Juz5TB3AjEIwMNhFrM66B+kZs4c0gs
         BPoUHn+VYU9Ufq7toHoRL0O6wQY3UusmFNIjvjaWkuLIQjfrTglENxqbQlrEKGXP+1TU
         HTbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=Nzml9LQc;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=Nzml9LQc;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of jroedel@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=jroedel@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=f9pB4cPhHNfDFzJYD0TYRseh+W2dBlQaCMfKSCXg3U4=;
        b=f07+XOVfoDiMIqVrc4uomJi+Ef1l7yuoEMYZJrLcJUS1KBAB02Ry81QOdXvBAFIcWR
         z0dLQAXNggO+uiapliq/Qf6YZohhj0AhrjuXdlHSUpDc8/jCQBgRCqPUs4GpRcnHLykz
         iEsmqt183jjYhuVsGvgC/a4+zfpig/8K3YxzKRMFkuzYkzzFAHw0qGjzuFFZgYxsakWh
         XKR84nFscHD/oAqN/x/rxWDLabDTJ4QIlzgmjP2iMJuM740UOW8hg8v9MrLesTnwZfZq
         +4sxC+leApzUKs1LMMefF0t6S58HtbvSj5nhZn/GHMWSSB3Tzq0IRFlmc/rEImaqkZC/
         o6+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=f9pB4cPhHNfDFzJYD0TYRseh+W2dBlQaCMfKSCXg3U4=;
        b=sczV/6TPuLbE+cZfh5aYE79UpOLh6VJpGmwjTFvgH+QmoOapNa4JSkd+SVPbcyKxgw
         0iHOLuT0dd6129KisEzjwvDdkf0g8ER5OuCPExe2e+azMIVUki82p3huZpfrJ/+uWuw9
         hi4hIqQzrk2W9e6GJHlWSYQJMa5BA+7+G35AmsopO1ndbuLefH2yyMeiz0q+xETgzGHo
         XRwlpeuj1yTPx0UwhayW4NzrsluCjO9EBI0NRauGtMDXx/vJXHHT6McA7dT2MwFsyim2
         dGcB3BOvn5X+wczLLRHJi0g0j2hy68QJyb63bZnAMBbAB7s5+lAz2xDcMixgGdFahDaB
         k/Cg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HoUOR2DsArKMEKyS0JeFei5aXwyt7AR9WtXVGRow42i9SKnsv
	bECZji9TY9UeZZ78ThIc4aA=
X-Google-Smtp-Source: ABdhPJxMPGjsXaugAiJ+HKSTsuu2ETpJbqkOIjttwWUvZihIbNbo7K+Zd4cyJiwExCRi0jLAQOhpeA==
X-Received: by 2002:a17:906:39d7:: with SMTP id i23mr7248380eje.121.1623961852011;
        Thu, 17 Jun 2021 13:30:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:6d57:: with SMTP id a23ls3621112ejt.6.gmail; Thu, 17
 Jun 2021 13:30:51 -0700 (PDT)
X-Received: by 2002:a17:906:39d7:: with SMTP id i23mr7248328eje.121.1623961851091;
        Thu, 17 Jun 2021 13:30:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623961851; cv=none;
        d=google.com; s=arc-20160816;
        b=v4gFQn8aT0fLGHVXpC/EDAsOhMrQZaUtPRiSMJawJlDBE0E+tuBfPAUhultBM6T3Hr
         2wZj6X3X6d+nTDhxafxRpuWVngspzaZEWRdK7b3ZeSvPiwuC5nvpFQNDo78xKDbuLsj1
         4ycCpjdYeNXzlOvbSgUX57H9ysWngoLYECYPltvBpvl0mPAaItvUKs6hRe/s06Gd1TH1
         SLyx7B1f3tiC5T+jPm68z9coxdXvzEKO1wjL4ppirHi8c1UnvBMKWS1zexP9D8CUT2D0
         /+wLkKJP7ChrXIFHNlWVDuQVUbvEAsBNmcxbkQTzUy1vFVIUIp5ZAVY/USPxF+Y4z78i
         c6Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature
         :dkim-signature:dkim-signature;
        bh=7MrOSZdFOt9wTUVyZxzKZ+9qRk1GhEPDQuhCcMSdan0=;
        b=XzVXPt1zxU8CNPcRg7TkdJvCS20h0e/aQ23ryUHd5mn7E08/MkLtcvNkcopCOoAMJh
         Zgkeq3nwoLD6p3g9+BOm1t/0IAkSpOsF/OQe950lVsidmI/p5+691toCOO/1goeee/ux
         kmIcBqpMvs+BP0ly2RAX8SK5Xt6kk2K8KiIdrWo1UA1lROKEZrVgp/VUfj8ZUa7N7XQi
         7cMoP5W48O6F0bVN0HbNCjqmQeF2vF2Ui2w94G7pCT2kRVdG8mowUOyYde2W5F97JhhC
         huhzX7QYZexqDEVXhNgB/YLXe7v9Qtzm6Ck01ECgdb21n8EsG137QwUhAIaWR6RrcT/n
         RHuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=Nzml9LQc;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=Nzml9LQc;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of jroedel@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=jroedel@suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id w2si367137edi.2.2021.06.17.13.30.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jun 2021 13:30:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of jroedel@suse.de designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from imap.suse.de (imap-alt.suse-dmz.suse.de [192.168.254.47])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id A9B4521B1C;
	Thu, 17 Jun 2021 20:30:50 +0000 (UTC)
Received: from imap3-int (imap-alt.suse-dmz.suse.de [192.168.254.47])
	by imap.suse.de (Postfix) with ESMTP id 50E7A118DD;
	Thu, 17 Jun 2021 20:30:50 +0000 (UTC)
Received: from director2.suse.de ([192.168.254.72])
	by imap3-int with ESMTPSA
	id waNDEfqwy2ASDgAALh3uQQ
	(envelope-from <jroedel@suse.de>); Thu, 17 Jun 2021 20:30:50 +0000
Date: Thu, 17 Jun 2021 22:30:48 +0200
From: Joerg Roedel <jroedel@suse.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	David Woodhouse <dwmw2@infradead.org>,
	iommu@lists.linux-foundation.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Lu Baolu <baolu.lu@linux.intel.com>,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] iommu/vt-d: Fix W=1 clang warning in intel/perf.c
Message-ID: <YMuw+LtM/B1QTTJI@suse.de>
References: <20210617145339.2692-1-joro@8bytes.org>
 <CAKwvOd=8jUsRFKg6+sqq2-DakbRBGR6Z6mR_smuxp+cMEmCHLw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=8jUsRFKg6+sqq2-DakbRBGR6Z6mR_smuxp+cMEmCHLw@mail.gmail.com>
X-Original-Sender: jroedel@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=Nzml9LQc;       dkim=neutral
 (no key) header.i=@suse.de;       dkim=pass header.i=@suse.de
 header.s=susede2_rsa header.b=Nzml9LQc;       dkim=neutral (no key)
 header.i=@suse.de;       spf=pass (google.com: domain of jroedel@suse.de
 designates 195.135.220.28 as permitted sender) smtp.mailfrom=jroedel@suse.de
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

On Thu, Jun 17, 2021 at 10:16:50AM -0700, Nick Desaulniers wrote:
> On Thu, Jun 17, 2021 at 7:54 AM Joerg Roedel <joro@8bytes.org> wrote:
> >
> > From: Joerg Roedel <jroedel@suse.de>
> >
> > Fix this warning when compiled with clang and W=1:
> >
> >         drivers/iommu/intel/perf.c:16: warning: Function parameter or member 'latency_lock' not described in 'DEFINE_SPINLOCK'
> >         drivers/iommu/intel/perf.c:16: warning: expecting prototype for perf.c(). Prototype was for DEFINE_SPINLOCK() instead
> 
> I think these warnings are actually produced by kernel-doc? (not clang)

Will kernel-doc check automatically when COMPILER=clang is set and W=1?
Because I did not explicitly enable any kernel-doc checks.

Regards,

	Joerg

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMuw%2BLtM/B1QTTJI%40suse.de.
