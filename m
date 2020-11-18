Return-Path: <clang-built-linux+bncBDV2D5O34IDRBSOJ236QKGQERPB3WJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B432B87EE
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:48:44 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id g3sf1629492pgj.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:48:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605739723; cv=pass;
        d=google.com; s=arc-20160816;
        b=U7prMPYulfxvDIDOksQenTwg0ne3rgxqsCza48IQdtjP0+TmmgOxBpdu6thDghZhlz
         FbzGj5gxc86ILZLpP3XP99Xg1l6eKTyF2DGvK1IlfRNwvGwdDAaBo8GdZSLM+YneB0CH
         eRTASbJQfUxQAH1EufMU33Agzjhr8h028T351GLjYuUWVtpfOGFGFHkXMdzCohyzbx9u
         ++73oDARi4LSiqgJNgXATi+R1/7kj2w9pDES3N0mE+uTarSFzPyzSGrqmZJ/Sw6Il9wn
         Hl8qt4CyGRym9mQuphyceWCWwaULay2vEjgWLzEBnlaTUitMW5hcDT56zdHdbbYrv2tc
         gomA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Fv3Q+SZP92NIqU0PoFGNPX7WD86nJsAIHP+5ew+bNew=;
        b=OeCPipdeIZXWMwg62AH4H74escdM88idBT9YRbqAyR5opI6SMOSUn0+pW+eUrLTJ4i
         YLKxOAnaUY+jSu6ZzwVWHBLkRthEQo2fuOYaajtQjguBuJZ8iF2AUasyeO+EI1dX1KWe
         UiCfpeHsL8OJoBm7sTzC/9Ii0LV5bb6PtnvZYtfPxFyxkDj+OTZ3WVhJsgtXROkJOOPz
         RbKP4FmN2It7SMxuyfhJHumGcPDI9smRFOnGHoOOSl2NAVT9tChx2NfVtHJdbWMv8pPl
         HEVBwhioCMbdnZ2SEP68AS8B5IEIbeCgym1CPsl1DyBSJGjXPP+Y6jcwxMbjXfHL3XYr
         bQzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=jzt1gpsF;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fv3Q+SZP92NIqU0PoFGNPX7WD86nJsAIHP+5ew+bNew=;
        b=e9uhnkQKfAN0vpngLRCTjQCoKRl3lkEyTcaDtLJO6jQfx5qoxi9mzB/gO+qlqOMFnL
         4Vq5k+8YZkSKklrQtvrfxTbH1SbXCH1mCGvENQ4kWMgjTXjQCBZwwwVJ/FuzfW8Q9jN5
         Sc7ymn1U6nyMBSqhw2kYDMDiwrx0+7prKe5QkhhYzOwiWpdD80cnDom3FyYQyeTQP3r/
         uqbhQiNM8h4yCIPQnMvFmzcOLl/pKuE2YyeKfdLOcn5ckiYCBbDUEFEpXwUlcJ69yuan
         4J255I/pCB0kUm7pEuNZy9QwCN8B5gu28z3VKpu8OXjhwzIrhjGYYtgZweHprEONygk2
         iEJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Fv3Q+SZP92NIqU0PoFGNPX7WD86nJsAIHP+5ew+bNew=;
        b=b4sk0Prg7ABFxI0GcEewz7Y18Ez7R8qA35q3nBzZPgut7L4TOA8UeVQcUFzDvNV2Kd
         JdNo4J+PLZT4Qxm3DigJbC07cSOAb5eXedsTQXfBOh2dtMlJwsaUZpMydVE9olGsSilb
         P6q/rw1LbGHxbG/p0E8JCTNJUJtLGIGq+LkecJHUgel9OAv7nOrtYfZAtjMlt8DTGBOC
         2g2OLUXrxcChiWBw380lbCvp5kyckOFM4rPkik1YunVMSXpBW8dq4B61RKmdwCppVoRA
         SGPZ+IAqOEEcHTwca34bNOw3hAgTcI539MHusT22o65gYqf+PGNhgpRpqIKSSzzYXKWE
         r4FQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531A0jsid3uthhK2j4oYZnl9xp8zyhjWN1VV9PZyHIzRX8RW9iVK
	WDQrmC6KUykDADFeQNKRDW4=
X-Google-Smtp-Source: ABdhPJxef3F/pZAiJmCjwS70Wkptr2WgDDuH+NpTkxTWImzVrL56QTYNZUUW4/gNjsXMEHiOKiUxtQ==
X-Received: by 2002:a17:90b:345:: with SMTP id fh5mr1250942pjb.198.1605739722821;
        Wed, 18 Nov 2020 14:48:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a0e:: with SMTP id o14ls305158pjo.1.canary-gmail;
 Wed, 18 Nov 2020 14:48:41 -0800 (PST)
X-Received: by 2002:a17:90a:4208:: with SMTP id o8mr1225337pjg.19.1605739721144;
        Wed, 18 Nov 2020 14:48:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605739721; cv=none;
        d=google.com; s=arc-20160816;
        b=PZ0zLUEOIjZF9UVUwlbpdTgPOqs46srUSNXSYRmVdKqELZO+rmwNRv/8c/+m1m1L1/
         vbfs6eoGTySZMYk4nGszuY0TRFjnTkZu0Lc4HMm1Dpt76kNLmE5q7jq3R8fn5BuLtODN
         TaswAXWTLr2dWGZBF5F7qmQZGeV00xV92zxmSMxVSOJGNT3OnqN1IijoIAkPDic9UxkG
         AoSMG9KQuhgeVga0K5oACRgI5FIerdmgkOPRbk3pVrxO8pXWJsDuDngi+KBbHwHp8C4w
         lspZR7RSZdMU79kYuhQBLkVZDOz5kQc3DkS+rwi/xLsq9r9H+aTnZ7PA6KRuNxKCHHSE
         2gMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=CDWRDuvnpRLXCbGEiuk+PzWML0tKl/PhZrcSzjoT20E=;
        b=TCUH6eTmiqOME+742w0b65mbcIh9mdNlzTOMpB1nYxMW2IPjSuCNC/zCY1L+gINfTV
         grAUiUmkt15HYRZSbX6P+0kJXuEPiNX239tJs7nLr/j29U+UERe9A7+uFKW5IA0FdctP
         gNWvhMaxVKkuMoweOBn+ijjYq8VTNM4K7S8RNE05mH5eQC/edFeLUdPKLuUj62jt1gLv
         PjsWbV71xEpMHR8yOkwrxX7KLAaoOb4NIkuDtuJLBb20MW5fkvIWy43z4mLi35VC0TWH
         rZjXB5wTTfGbx/5d8ND5ZEfyP7x/IJLLqkHCXSMqyjcLn23BteS70IBRsEEyqAuqlbTL
         GnMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=jzt1gpsF;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id t126si1577999pgc.0.2020.11.18.14.48.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2020 14:48:40 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0::3a21] (helo=dragon.site)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kfWFd-0005db-Sy; Wed, 18 Nov 2020 22:48:34 +0000
Subject: Re: [linux-next:master 5868/6773] arch/powerpc/mm/mem.c:91:12:
 warning: no previous prototype for function 'create_section_mapping'
To: Dan Williams <dan.j.williams@intel.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>,
 Andrew Morton <akpm@linux-foundation.org>
References: <202011182008.u7jsMtBl-lkp@intel.com>
 <CAPcyv4haEaWN9f6eCpnQEcjo4kcGwYp8dcs2PLDnvhG6wj8cDw@mail.gmail.com>
 <CAKwvOdnJYhs1vO8QmfPBdd107JRGfBQXTipCOZnaHe0=qSi0dQ@mail.gmail.com>
 <f67e234f-9ade-fb8e-1677-d2d92fb07f23@infradead.org>
 <CAPcyv4hrjj45kn9ep1mAAaX6vtA2+5x_67V-Da0kp7bO3HVa=g@mail.gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <24515a61-61a9-0728-5ba1-cb2bf00bc449@infradead.org>
Date: Wed, 18 Nov 2020 14:48:28 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <CAPcyv4hrjj45kn9ep1mAAaX6vtA2+5x_67V-Da0kp7bO3HVa=g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=jzt1gpsF;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 11/18/20 1:38 PM, Dan Williams wrote:
> On Wed, Nov 18, 2020 at 1:20 PM Randy Dunlap <rdunlap@infradead.org> wrote:
> [..]
>> Yes, so with gcc, that gave me something like 109 missing prototype
>> warnings -- including one for 'create_section_mapping'.
> 
> You see those with this [1] applied? I don't see those warnings
> anymore with gcc-10.2.0 and that patch.
> 
> [1]: http://lore.kernel.org/r/160558386174.2948926.2740149041249041764.stgit@dwillia2-desk3.amr.corp.intel.com
> 

No, I was testing today's linux-next (20201118).
and gcc 7.5.0.

After applying that patch, that 1 out of 111 -Wmissing-prototype warnings
is gone.  :)

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/24515a61-61a9-0728-5ba1-cb2bf00bc449%40infradead.org.
