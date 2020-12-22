Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBVCQ37QKGQEKOSZXCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7CE2E0602
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 07:24:07 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id j20sf11020184ilk.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 22:24:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608618246; cv=pass;
        d=google.com; s=arc-20160816;
        b=QiXtXBgvDFDrlv1mqs2uCW2QOAhAGaoBSoNdcSnWdf20e573xxLnUKMv66NaCZQj31
         4nlZAdlkPsAsb78ctym9swfl57Rb6QYZKWmcN7rT/mBvCKkASufYRsMEJx0kFRaykz+T
         IvzwAAWZ5obchkG9rzSGph30lCB1CHtsFb2SG7nmy0PkLcwcMuHmifnpl8ZKzb0YU2BQ
         DAbmpYjgJ8wAyzAswpKaKrO7XBSczlrZp3QZSLCKmx3pIi2nM3dLQpr8/LvM4cGvABMU
         9Dk9rfJSBCZZCc0AwUg7vzwIgmbpTHEhK4yqjGdU4eKqc48ldk1KUEW/+XbvgpWsgyVl
         oGIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=DewvlRhdbnK7EAv6f2k9J39EyzpEdhP6/ZZFwV785UY=;
        b=uEzN3rO/BrSOZcWxLk1cw6pi6KxPwGb1Lw91yWwLUvVXRygOegySoP4rlmP57Dc+eT
         DYKzzChz/MuwbbeGHM579GdqwutnOgJRrBbhidyotKYiFH7hbBZxb71v6SdhbvadIxev
         vK0YNKmtJeAyIGPDP+HGva0VgvhhviWrPiE9FaxaZ0JlSMF7L6x1AyCzCRGQvm6MeSwL
         g9xQC4ICTChnw/Ald9+gZQJO7LYnWQgDrXZ+R+9DyvynWeywEbLv6Aiv+62ZaWQufelp
         32z/vtTjstS+RcUlDyq5wj8qmrA9GDG8G0PdvQAWjI83Am+2J8WgHOH1q4afu4B3Ci83
         seKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bYLuiH1o;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DewvlRhdbnK7EAv6f2k9J39EyzpEdhP6/ZZFwV785UY=;
        b=nqX16vUyWJu8Y5PhLLX34IiQjPNS8wt3BTWGas+FdCd+Ppd62jdSTbcSfR7M63XTY9
         Gcr0RHBCojniDvmEfhQ4KP60nrJu9V8eLEditaS9Q763r3yshTtE1pRyn9nV3ouC3nsl
         VJHI0mwsf/V4g0p4ZEEP4Gnu1oTJgpukQuMzTk333T5jbEjkVkNAJBlqyFbpy+AuByFk
         O+tiaq7Ep6Uk2GQ3770sHa/RH6Z8z8d91eaIVyMDE4X8Ab+iIlR7oMtVWVcTUxokWFwW
         0rFaHLy9rgn1hLX9QXLi3PseKs4Whb8pg4aOTQWxt1caWKxwfxi6eoeEuHagbEBlzoE8
         Zwqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DewvlRhdbnK7EAv6f2k9J39EyzpEdhP6/ZZFwV785UY=;
        b=jFxEmKsHe9BciqZxwfL5cgNesmbE4M9uA/jZwqHiaafQ5ko6OOUH/rR/y++5aZZ4X1
         mCFvPD/bKAlpsHYu0AP9vCsNjIrS9F2BtYFSX7zG3v50rjJBmiRmwIPdPswk4saL8efn
         JopLclTHtAe+MFtfSd/SBH/awgZuY/i5ZRvH6O7BLQaLbckbEG5+Ym3zqghKRMfZtyV3
         dKbaRNLzJdsckgI8CXxDkkY/DvdV3GbQpbVNvXX9WLdEUxaq+wErw2eOG3eq96xqQwHp
         rrs9B8aPKWfy/RMlnrpWXiA9/VoacU5CTzEdgggblWOQ8kOEN6qklnYLTXhomuFPW7RB
         n7bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DewvlRhdbnK7EAv6f2k9J39EyzpEdhP6/ZZFwV785UY=;
        b=J2qLFOjNcg4fO2e87MeCd8mBZqQs40Poj+Z8BW6N4MN4GEmrhHXgH/0kJGDMKQScUd
         OLSnM980IupNHVO85Hmllao5Ur1i122PqPRg+gUCVBACX+NZ9OBIjyFd/pHLcS0Tel3R
         Qb4T62aZeLTuIYbjUw9ZlPCscMVq+jptzQ/9RfdsoNXJfxmv8NjntgGTOKuYj2C9h2Yh
         SCw/C4QnuJcNoshcD+mn/57BKaFckS9lCKqRQ8VgFBlQ1ZW30uU4nLgI1OYvsg4+kYhg
         ohrRd82WrYZ2vaThIQbA2a2ckLkeC02ax45HSPG584wzQC1ZGtINQNHjP1D34sgvxerm
         cGDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532k3JwWSSHwTRx8nQeXlKHRhZMp0nz0d+/QMr8wvjLxIzAx/LHS
	tSi74PkodGoZbSEjm+lYOTo=
X-Google-Smtp-Source: ABdhPJwwbIxadoAKn+myF+C81BiZqTnttJh8LkfjGUX5/Web3LtM5eUbSoYGc0Tb9gjr2CdcPKflyQ==
X-Received: by 2002:a5d:8d94:: with SMTP id b20mr16824419ioj.200.1608618246588;
        Mon, 21 Dec 2020 22:24:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9914:: with SMTP id x20ls6562726iol.7.gmail; Mon, 21 Dec
 2020 22:24:06 -0800 (PST)
X-Received: by 2002:a05:6602:2b81:: with SMTP id r1mr16815074iov.61.1608618246157;
        Mon, 21 Dec 2020 22:24:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608618246; cv=none;
        d=google.com; s=arc-20160816;
        b=f7Pj7kwZxADkKcakroPvGjbenUHv3TgEVKJjB8ZhnyK5W3KrKvtQO0xxOmkHF4fWdG
         1BMkunRtvaqVv6XHiCZoEfYT79txnB7003VQxLh3ObcfYqh5BvROYrIEyN4bBB8D1C6T
         aZ5RgBe36+VAqQqoI/de3n6QjrKHnifR5IzEQc9y2n6cGK+okZuO9yZtpKLPLMKiYLwF
         V9qX3MXcCOIOwSIWViv2BhQNFirBf/wCnufbvdxOraRJIowre2Vi2lqqc5983PD3PzSp
         RnkILrTyBIfNYYYuT9hBDTzo+bVpFIyF8z938j5mw9Aj+WIgaZWsdNdcHou/gxXA3E04
         KTQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dvYfLYsFfS43bvrF26hnW/hEbzAkRm7Scm+LXEgVfVU=;
        b=ayJ6ZY3co8PfwIigkVqmvgAeW7sMJK72yHhJpr9JtwFMXJDAI6YfK2sZn8gUXrEYSO
         Oh29nFVasDxFPvT5/0ubcihGm605gS4pKUgUE/u9kFxaRYuSNEcwkXPAWWljI0mH0TrH
         8oTLOyicJtdZzxwBqiJbGyfoU8f08NTibp2gEiOKeQcDbzBEOWvtzMvo7Mjy9lpSbTdd
         DxzrtPBhKbGJOGk3kRuAF19vuNF+CKL56RV6X9MCiB9V6bKAvd9euBOL4GVao0BBD1a7
         xN4Od8Tmu1oJWkXMtyfMLIr1QoX1ghWlC8I+tnEVb3cJGVsL16LojNnditlBpbE9kHcE
         pD4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bYLuiH1o;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com. [2607:f8b0:4864:20::d30])
        by gmr-mx.google.com with ESMTPS id k3si851410ilu.0.2020.12.21.22.24.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 22:24:06 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) client-ip=2607:f8b0:4864:20::d30;
Received: by mail-io1-xd30.google.com with SMTP id r9so11040885ioo.7
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 22:24:06 -0800 (PST)
X-Received: by 2002:a6b:3bc3:: with SMTP id i186mr16958974ioa.192.1608618245892;
        Mon, 21 Dec 2020 22:24:05 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id x5sm14561731ilm.22.2020.12.21.22.24.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Dec 2020 22:24:05 -0800 (PST)
Date: Mon, 21 Dec 2020 23:24:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Tyrel Datwyler <tyreld@linux.ibm.com>
Cc: james.bottomley@hansenpartnership.com, martin.petersen@oracle.com,
	linux-scsi@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, brking@linux.ibm.com,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 3/3] ibmvfc: use correlation token to tag commands
Message-ID: <20201222062403.GA2190683@ubuntu-m3-large-x86>
References: <20201117185031.129939-1-tyreld@linux.ibm.com>
 <20201117185031.129939-3-tyreld@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201117185031.129939-3-tyreld@linux.ibm.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bYLuiH1o;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Nov 17, 2020 at 12:50:31PM -0600, Tyrel Datwyler wrote:
> The vfcFrame correlation field is 64bit handle that is intended to trace
> I/O operations through both the client stack and VIOS stack when the
> underlying physical FC adapter supports tagging.
> 
> Tag vfcFrames with the associated ibmvfc_event pointer handle.
> 
> Signed-off-by: Tyrel Datwyler <tyreld@linux.ibm.com>
> ---
>  drivers/scsi/ibmvscsi/ibmvfc.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/scsi/ibmvscsi/ibmvfc.c b/drivers/scsi/ibmvscsi/ibmvfc.c
> index 0cab4b852b48..3922441a117d 100644
> --- a/drivers/scsi/ibmvscsi/ibmvfc.c
> +++ b/drivers/scsi/ibmvscsi/ibmvfc.c
> @@ -1693,6 +1693,8 @@ static int ibmvfc_queuecommand_lck(struct scsi_cmnd *cmnd,
>  		vfc_cmd->iu.pri_task_attr = IBMVFC_SIMPLE_TASK;
>  	}
>  
> +	vfc_cmd->correlation = cpu_to_be64(evt);
> +
>  	if (likely(!(rc = ibmvfc_map_sg_data(cmnd, evt, vfc_cmd, vhost->dev))))
>  		return ibmvfc_send_event(evt, vhost, 0);
>  
> @@ -2370,6 +2372,8 @@ static int ibmvfc_abort_task_set(struct scsi_device *sdev)
>  		tmf->iu.tmf_flags = IBMVFC_ABORT_TASK_SET;
>  		evt->sync_iu = &rsp_iu;
>  
> +		tmf->correlation = cpu_to_be64(evt);
> +
>  		init_completion(&evt->comp);
>  		rsp_rc = ibmvfc_send_event(evt, vhost, default_timeout);
>  	}
> -- 
> 2.27.0
> 

This patch introduces a clang warning, is this intentional behavior?

$ make -skj"$(nproc)" ARCH=powerpc CROSS_COMPILE=powerpc64le-linux-gnu- LLVM=1 O=out distclean ppc64le_defconfig drivers/scsi/ibmvscsi/ibmvfc.o
Using ../arch/powerpc/configs/ppc64_defconfig as base
Merging ../arch/powerpc/configs/le.config
#
# merged configuration written to .config (needs make)
#
../drivers/scsi/ibmvscsi/ibmvfc.c:1747:25: warning: incompatible pointer to integer conversion passing 'struct ibmvfc_event *' to parameter of type '__u64' (aka 'unsigned long long') [-Wint-conversion]
        vfc_cmd->correlation = cpu_to_be64(evt);
                               ^~~~~~~~~~~~~~~~
../include/linux/byteorder/generic.h:92:21: note: expanded from macro 'cpu_to_be64'
#define cpu_to_be64 __cpu_to_be64
                    ^
../include/uapi/linux/byteorder/little_endian.h:37:52: note: expanded from macro '__cpu_to_be64'
#define __cpu_to_be64(x) ((__force __be64)__swab64((x)))
                                          ~~~~~~~~~^~~~
../include/uapi/linux/swab.h:133:12: note: expanded from macro '__swab64'
        __fswab64(x))
                  ^
../include/uapi/linux/swab.h:66:57: note: passing argument to parameter 'val' here
static inline __attribute_const__ __u64 __fswab64(__u64 val)
                                                        ^
../drivers/scsi/ibmvscsi/ibmvfc.c:2421:22: warning: incompatible pointer to integer conversion passing 'struct ibmvfc_event *' to parameter of type '__u64' (aka 'unsigned long long') [-Wint-conversion]
                tmf->correlation = cpu_to_be64(evt);
                                   ^~~~~~~~~~~~~~~~
../include/linux/byteorder/generic.h:92:21: note: expanded from macro 'cpu_to_be64'
#define cpu_to_be64 __cpu_to_be64
                    ^
../include/uapi/linux/byteorder/little_endian.h:37:52: note: expanded from macro '__cpu_to_be64'
#define __cpu_to_be64(x) ((__force __be64)__swab64((x)))
                                          ~~~~~~~~~^~~~
../include/uapi/linux/swab.h:133:12: note: expanded from macro '__swab64'
        __fswab64(x))
                  ^
../include/uapi/linux/swab.h:66:57: note: passing argument to parameter 'val' here
static inline __attribute_const__ __u64 __fswab64(__u64 val)
                                                        ^
2 warnings generated.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201222062403.GA2190683%40ubuntu-m3-large-x86.
