Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHGB4H4AKGQE5AKQVGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1FB229BCC
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 17:51:57 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id v13sf1259188oor.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 08:51:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595433116; cv=pass;
        d=google.com; s=arc-20160816;
        b=H0rf1KrExZc5bH8UAybjVedOWjQTLCLRSObkMWmRh5bLD24IrKmSFVbgW4+8k6DxDz
         tn4GXtoNh5s1tSpwFBmqjGgVjk6dsZ3nR6oZXjPBDubPXu7NLtjH9sODTc/i2bAPovGk
         Zp1LVYnmtnQ1LEPPC3vrPWSso0CeuRC2CevIKGFEywShOjKa7Ehs+OvUC7as3/c2kRSw
         pqtj+eptmhZYlHlrHaA0S1GsalzW8VKfdva1HOsdTlHE+lruxRVBIdPty+U+nZ+l6q+K
         N1h3vVeSKniYkFe12ueeYKbtSLkRCEjPj+Y/5WdLzCRy+a8q5Vdv4bzsN5l8gPwFjPfH
         4usw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=ntVEDOdb3nIifHPE0Hu4ET9iRCuBUm5KJmgLOw8Bxn4=;
        b=wXgBgPrprPBkBlPSn9PwF89G9PshfCC4e5lZYK0C+fkxPS7t4bQK35wjR3e+1rhxG0
         azeea5iTmhFEPsE+w1g3Fiqw4AboybmOQJ57F5yuWj5uYYo7UOQoUx7AOfcZEiGU/Q3B
         x3a5j054WI6Sno1kgJtjTW/RDTFTF4McGemf9tM/g4joyWLQ+nSgyjh4CepY/n/3TqGk
         WZVuHpC0ucBLE54UPvav3kxZyFxNxvYp8Mvim6qYdRzXE/SJ8qhXk6Czmp+2aWLb8BtZ
         G1zp0hHztpOF7SFqloUQw1xeLzwUZIAq0OKG1i+uWH52CVGwL+o8qoFBWxFVs2BaEIiF
         g8YQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="HNfpGSD/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ntVEDOdb3nIifHPE0Hu4ET9iRCuBUm5KJmgLOw8Bxn4=;
        b=SK7/9sUShWNboHlTzmpFqemGA2NzHsuGDBnAGj8it2uusYatPOKcs8hIBT0514aDEs
         /YlpbLT67kchCtJW2HxDF7BNLajvfraL1bq2Oj4f87avDVlawNqSy4TwGrFn5LYMYTtv
         hXLUcSJltRRlHuXtwL9Reo8q8eHA3xMmG74PR/oy3IKibfUq0daue8Fm6dl0Ngs72/Gn
         ZxhnMDpu0upawSiOeSAMs1Mqe4u+evOWumed0eURxPEShhqjJdUannWyighXTG6ggmaE
         UcSJM/qpLaM1MHAizv2CApe31IPdTIOEo8DHzhxzqMkhdCYEMIQiYo4c8QgOPwbbdv4Q
         wuxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ntVEDOdb3nIifHPE0Hu4ET9iRCuBUm5KJmgLOw8Bxn4=;
        b=FDJTfBJ8k1t8c5Hclh5vUhE8MzlRVITzJrBBixrL01qeD5bVLjE5c8eYrXs2oMRkyI
         d3Qgz/p2IrGBTEcBuieK52hy9GhYYkb+1wCPPgjaycD3Fvf03n2qte0hAPbEEktrTzru
         +N7UtqCL7YEuP1GvmdAUW5C4ETApbMkSU1vgi5Tte3UtVlS5ALid0kjbu0Hey4Objhbw
         6v7wpqe+L41jnxXeQY8I5864wknNVU9e0eTCmnY2wKfLlLdNFUex8+XrTqwFRuUQZDp6
         er9Uog8aeRjssQz+aeJ00sqATZj17lzUS70t29Pt/8XfyzygLg4no8Mv04r7VJTAQRVL
         GQfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ntVEDOdb3nIifHPE0Hu4ET9iRCuBUm5KJmgLOw8Bxn4=;
        b=ZRk7d7pbsK4mVwiJnDspwZv/L6KzNT1UPE56u/Bmtt8o1SggSls92wAAIMbs82Wvmi
         lZfd9i3kfYkSxFTB5+Kpza0XmJVpD/+KKFVAW8ZX34zlX3GoykrpPzg50432H5/LzeyJ
         VT8874HwO1tRICNfMgOwuf3/8pY/T3Stz7D7myg8sYajGJhh7kY2NOsnEci5am3kYsaj
         I9wc+wLUqhwxOGrKx4qcuhu+2zK8suw7HjpajhFO+y5LjlVbdgff5DsV386ZHhfwtIW5
         BjfO1I3d1hQ2rtPfCHSnG7ON1pN/4V7alkvGPtTi3E5Iek9Us/4BfqlvKg8zAwdHade2
         TmcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530SC1hT+dvQMaayQ0EEESxxeNM3MeKfy43vbn/wUercNXUdDn7+
	6v4obB/F9Ip50mNCgddwTkY=
X-Google-Smtp-Source: ABdhPJxjVEBPW/vK0cufYWS7qy64FWuAtiOY7rBDC8goh3kIQimbCrv/fF5IFrdJOn8KDlJPMiJ5Jg==
X-Received: by 2002:aca:c0d5:: with SMTP id q204mr271304oif.142.1595433116473;
        Wed, 22 Jul 2020 08:51:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4684:: with SMTP id z4ls479801ote.1.gmail; Wed, 22 Jul
 2020 08:51:56 -0700 (PDT)
X-Received: by 2002:a05:6830:1d6c:: with SMTP id l12mr516516oti.275.1595433116206;
        Wed, 22 Jul 2020 08:51:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595433116; cv=none;
        d=google.com; s=arc-20160816;
        b=KwBzQJ7tHdWta6R2spvo5/aoRLikiFEXZNdAx6pgllAZTTvV2+0s93JrExz2ynnFN+
         4dQK40/ymiMioAH2Fn19FZtzLpsf8BN4Ccy/8WYS2mzfAE65Z4q6JxJdm2e+Cu4AhIrB
         s1j4ndQwlbr5Vbt3f5HxsTw85Q17uYsDoByRSEeISJdNRsOlw5VMoOTDAGg8MBm/UDL8
         8pLIDGtex/6H4XRPhbrrGPrsqtJDrXWLWFE4YfkFxyT6ql9dLDoksSVkXa+0w3BtOYBA
         1dnQtZiqEixq967R2vPghrtIoBr74OiSbwzmoKxNg5PnWMLOlf/kFBq5Ubu15qfu6csZ
         XHjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dCwQTlNXnobYYKxJqVSwZ9ygF2riTvyRu+xgcGesZdQ=;
        b=BqdJagp6qbIXeuWXKVrRGe9Ew2ndFL0Gp8zXqRfGuDptkdzynl0bHl8Cvm5aWzMBAf
         hf1VY8s2//BtyG2XI8SLyvr9DCy+/KGgiqZAid25Gaa8nbMcJiLWsgVsoCyBFSio/Fjh
         sjvJHgh/bNcoxUSKZGrFOj8TbqpNh1FhM9Ghi30LQkv3ahOx0tpcE+f7EOoKBaUeCOKU
         vdHeMyajwJur1SO+eye0foVgkZfX5Y/XInKcphghcA5vLobsHDQZ4nySuGd91WdkyZEn
         dUcChYBXUaIFhY+EpDwZlQQRs9p2pWldbfHbQa2Ur81FEcY0OdcPMGKbFvv3yvxBEITv
         57Pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="HNfpGSD/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id n26si24738otk.5.2020.07.22.08.51.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 08:51:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id s16so2155400qtn.7
        for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 08:51:56 -0700 (PDT)
X-Received: by 2002:ac8:4301:: with SMTP id z1mr9022qtm.48.1595433115591;
        Wed, 22 Jul 2020 08:51:55 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id g22sm173422qkm.97.2020.07.22.08.51.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2020 08:51:53 -0700 (PDT)
Date: Wed, 22 Jul 2020 08:51:52 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Gal Pressman <galpress@amazon.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	kernel test robot <lkp@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>,
	Doug Ledford <dledford@redhat.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-rdma@vger.kernel.org,
	Alexander Matushevsky <matua@amazon.com>,
	Shadi Ammouri <sammouri@amazon.com>,
	Yossi Leybovich <sleybo@amazon.com>
Subject: Re: [PATCH for-next v2 3/4] RDMA/efa: User/kernel compatibility
 handshake mechanism
Message-ID: <20200722155152.GA3836710@ubuntu-n2-xlarge-x86>
References: <20200720080113.13055-4-galpress@amazon.com>
 <202007210118.fF0Xv5Jy%lkp@intel.com>
 <99314564-cb73-5a25-3583-1afda323d2b3@amazon.com>
 <CAKwvOdns6+LVqLO_aZgXOYi33xskO860=BEU-=Q7c3nGYkHs2A@mail.gmail.com>
 <2567f2dc-90e7-a0ca-e322-f585bda08e42@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <2567f2dc-90e7-a0ca-e322-f585bda08e42@amazon.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="HNfpGSD/";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Jul 22, 2020 at 09:35:14AM +0300, 'Gal Pressman' via Clang Built Linux wrote:
> On 21/07/2020 20:10, Nick Desaulniers wrote:
> > On Tue, Jul 21, 2020 at 4:27 AM 'Gal Pressman' via Clang Built Linux
> > <clang-built-linux@googlegroups.com> wrote:
> >>
> >> On 20/07/2020 20:08, kernel test robot wrote:
> >>> Hi Gal,
> >>>
> >>> I love your patch! Yet something to improve:
> >>>
> >>> [auto build test ERROR on 5f0b2a6093a4d9aab093964c65083fe801ef1e58]
> >>>
> >>> url:    https://github.com/0day-ci/linux/commits/Gal-Pressman/Add-support-for-0xefa1-device/20200720-160419
> >>> base:    5f0b2a6093a4d9aab093964c65083fe801ef1e58
> >>> config: x86_64-allyesconfig (attached as .config)
> >>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cf1105069648446d58adfb7a6cc590013d6886ba)
> >>
> >> Uh, looks like I use some gcc specific stuff here.. I guess it's time to start
> >> checking clang compilation as well :).
> >>
> >> Will fix and resubmit.
> > 
> >>> drivers/infiniband/hw/efa/efa_verbs.c:1539:18: error: invalid application of 'sizeof' to an incomplete type 'struct (anonymous struct at drivers/infiniband/hw/efa/efa_verbs.c:1529:2) []'
> >            for (i = 0; i < ARRAY_SIZE(user_comp_handshakes); i++) {
> >                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > 
> > is user_comp_handshakes forward declared but not defined for an allyesconfig?
> > 
> 
> I don't think that's the issue here, the real problem is the first error:
> 
> >> drivers/infiniband/hw/efa/efa_verbs.c:1533:3: error: function definition is not allowed here
>                    DEFINE_COMP_HANDSHAKE(max_tx_batch, EFA_ALLOC_UCONTEXT_CMD_COMP_TX_BATCH),
>                    ^
>    drivers/infiniband/hw/efa/efa_verbs.c:1520:4: note: expanded from macro 'DEFINE_COMP_HANDSHAKE'
>                            DEFINE_GET_DEV_ATTR_FUNC(_attr)                        \
>                            ^
>    drivers/infiniband/hw/efa/efa_verbs.c:1506:2: note: expanded from macro 'DEFINE_GET_DEV_ATTR_FUNC'
> 
> 
> Apparently the braced group (is that how its called?) is supported by gcc, but not clang.
> 

I believe you are trying to use nested functions, which are not
supported by clang:

https://gcc.gnu.org/onlinedocs/gcc/Nested-Functions.html

clang supports both scoped statements and GNU C statement expressions
but you are trying to define a function within a GNU C statement
expression and use it in a designated initializer (in
DEFINE_COMP_HANDSHAKE with DEFINE_GET_DEV_ATTR_FUNC and
DEFINE_CHECK_COMP_FUNC), which causes a problem with clang.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200722155152.GA3836710%40ubuntu-n2-xlarge-x86.
