Return-Path: <clang-built-linux+bncBDAMN6NI5EERBXMP2P5QKGQE2OAWOVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AAB27F0F9
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 20:01:04 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id l17sf884006wrw.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 11:01:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601488864; cv=pass;
        d=google.com; s=arc-20160816;
        b=mVE+qCgW2WGGXLGOLC5iELIAYIPx4h+56K53Wmg+yXSb14DziSDPst3VVCsXhnyczF
         wbxzsBTOzaWYBV0rziVRH5zAUozSmn+8FlbcbTaQMMBNSTJqHeuk4bICjvvwo3Cp4d3R
         0rdqNZeQ1y+uYo4cDjQXTA87O5jt5u1rR0yRi7aSiSkZe5CWl0Ew2cUavSKzI2XlYbeI
         DihUexcSJ04RZlHPnsCw6VGcYmaVpUhpai0kkbMfTBtptrcs8PwAunzo7rUbUKOIKcsO
         0k36yT+P3AgTqq5ek0/2vCJpbL/atUiA0qJXRpRzw4jyF6rOJVb4u6H/ddeHUiLhBA6b
         RMiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=8yRZjnvDG9SQgYVjla72EfK8nATBQ/s4lXrTSRzCURk=;
        b=hwTz+R6Hlf+OaVjVjhCxxNx47IT7bRWIA4A2DpYF5tpsNi12jBVWY/Dr/L8MrmG2Ad
         AhdmFHSzR+SPgW1lXFHVpmXfsRIv0Pal2bvR1eG3gchMmSJ2jcU2Qp57YswBYYRChoOr
         Nw1ZY2mwpGcZo+ZhPyiKIyUp9WjN2pOE6BDmBeNS2kHCi54ipV37lOSOidECL4oKxRbq
         w9+jpX20tZGEgamXFp8G+aOMy8v/J0nmpV6CoVZnOoP/L51zHMpwMhzey0lAT4czXMA6
         AgVEwHaS65t28aO2O0UaVgooy86LYwSLCYgEJEi2aDdVrBEB6X0mQneKyZu6iIIJ9ZPs
         iivA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=BSjiTsAg;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8yRZjnvDG9SQgYVjla72EfK8nATBQ/s4lXrTSRzCURk=;
        b=J2zvHIvnrB8oCeepG+sRiI9e349qze7DWdrGCSeb3IYh1/JBXo46TnECW43SzrhGJa
         iw84u3g+6a8CScSmt5wY6TBoyycFnuYH1EJfdBVitQAPjZVSQlYRteFiRPvLLWly2szI
         IlrLUexKMqANhWZaPIp0HWjNznrPh/4U8zcrMq8VeygNrCO/AFtx+oQOdpFVvnD1EsbT
         UJ/SuhQ3zZuw3V1K0ULKAfnLwB3wi78hsSNwVva1TXlgUxJt0p4JQpKJA4XubswCcVax
         efPGvzHclv6rYPpl9OdHI2oWmHpwrfSnAnbqd63kV6wnO6/RSnkBlH2CKOZpFIo32KMi
         wMKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8yRZjnvDG9SQgYVjla72EfK8nATBQ/s4lXrTSRzCURk=;
        b=Z+OkV1h1TETNa5YuzBnVceC+J3k+o1dbnum+R/+CU8sPLYycmbQEkqTfzI2NI6G0TF
         NZETC/N49/HS/ioBFsxgy8CDw/QCcMymzbPzQl8WnlULWOKPe1uMWBGZasDW9vI3DX1U
         ZnZl/fWV3o4g8m5QSA0+lkKRO8r4yCjGvFwP0hum5+Hpcyt4YzMSSI3uKskWF/iL3mBj
         BPZGG0rJNcGrR1hLh8aZuL1wSvK4G4gtGltk5PTYyPdjLuw5/NJ3UtuhizB6G2/ONqAs
         A1yYw0oG0dtGu9UbStc3novoRAw69b2W4YKa00f8469FsOB1Fxs9ndOn9DUqBwtILXh1
         rFEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bRyQG7NWbquN3by0KFTbfjIuvD3vDRn67pwUzuaqKlhIsDGBS
	7/ajLaeJRQey4aBAsBtuQFA=
X-Google-Smtp-Source: ABdhPJyqoBT5iqVeBr1tx7PaRDbFTXDCcMFogucULd2CN+6z1VoIhaBfY9Xxj2ylfV4lEHZ75YLmfA==
X-Received: by 2002:adf:e8ce:: with SMTP id k14mr4733134wrn.394.1601488861880;
        Wed, 30 Sep 2020 11:01:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:c2c1:: with SMTP id s184ls1508219wmf.2.canary-gmail;
 Wed, 30 Sep 2020 11:01:00 -0700 (PDT)
X-Received: by 2002:a1c:960a:: with SMTP id y10mr4203831wmd.128.1601488860918;
        Wed, 30 Sep 2020 11:01:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601488860; cv=none;
        d=google.com; s=arc-20160816;
        b=XfiuriVaSVtbIznX9Md3R4KL9xGnVBGTxfl0WGntfq3qtoWOhD4kGt8X2xgjI3WuQu
         UyVk1CuPzI/kbusYXCvokGPLAji0+n8p37swc7w9Zn+DaXBRToRomzLX/52ZmPcu3jfA
         00onwxPCIzBreMwJlfMwsucHvsNqBPuX8gHtV97Fa8iUG07oOs/kpsnYvtCp8dfd0XSL
         NDXx/UMUkbeDE9z3OnQqPg3om5tnUsRL07hyEbR6XvDKYZ6p1wWv8XsS/8ssasZbpz6L
         XEbMNB+GWzqiLDteOibc5FbvtSMipQixoSuGv2f+hZWduzjExWckgaaBMxKWdrR7sTvu
         NbAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=KADJNPeYkWLc4rv8X/2/vXEWW8tE11yqvvL4qWKRvO8=;
        b=UGgFGtBOU+3EVnWFfVPfnbrFaPCsqckb9myqg5q7Wq9WzqOgnryDFeOXnUeiC05S59
         vB1Xh78O8otsxlKiPe6a8km0N6glfX8W0paXwyfdAcqlmvfAzNWOFn6N+iuHdTJAjueJ
         LA+8GF+sLJ3DxOq+4il3dDcjAKY9EsLkG7usOARulbHBWcHH/r8hxOPdoXAf7bYLRwxa
         J+oIAk5urf+Dx4yquizDAN4oCkQVNLD5jowqrDrBxSC+Y0vBc69cgp4GRoOHcHUkBy8y
         FoELcmA/FW69HkwyFRAdmSDb0mNvpybXhbAYYfYn61T43HaTmAMX1d6XUGSKgq/oCsA0
         UoLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=BSjiTsAg;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id h2si88045wml.4.2020.09.30.11.01.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 11:01:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Balbir Singh <sblbir@amazon.com>, Dave Hansen <dave.hansen@linux.intel.com>, Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
Subject: Re: [PATCH -next for tip:x86/pti] x86/tlb: drop unneeded local vars in enable_l1d_flush_for_task()
In-Reply-To: <20200930170316.GB2628@hirez.programming.kicks-ass.net>
References: <20200928124457.27289-1-lukas.bulwahn@gmail.com> <20200929071211.GJ2628@hirez.programming.kicks-ass.net> <20200929083709.GC2651@hirez.programming.kicks-ass.net> <87eemji887.fsf@nanos.tec.linutronix.de> <20200930170316.GB2628@hirez.programming.kicks-ass.net>
Date: Wed, 30 Sep 2020 20:00:59 +0200
Message-ID: <87blhni1pg.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=BSjiTsAg;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

On Wed, Sep 30 2020 at 19:03, Peter Zijlstra wrote:
> On Wed, Sep 30, 2020 at 05:40:08PM +0200, Thomas Gleixner wrote:
> Also, that preempt_disable() in there doesn't actually do anything.
> Worse, preempt_disable(); for_each_cpu(); is an anti-pattern. It mixes
> static_cpu_has() and boot_cpu_has() in the same bloody condition and has
> a pointless ret variable.

I absolutely agree and I really missed it when looking at it before
merging. cpus_read_lock()/unlock() is the right thing to do if at all.

> It's shoddy code, that only works if you align the planets right. We
> really shouldn't provide interfaces that are this bad.
>
> It's correct operation is only by accident.

True :(

I understand Balbirs problem and it makes some sense to provide a
solution. We can:

    1) reject set_affinity() if the task has that flush muck enabled
       and user space tries to move it to a SMT enabled core

    2) disable the muck if if detects that it is runs on a SMT enabled
       core suddenly (hotplug says hello)

       This one is nasty because there is no feedback to user space
       about the wreckage.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87blhni1pg.fsf%40nanos.tec.linutronix.de.
