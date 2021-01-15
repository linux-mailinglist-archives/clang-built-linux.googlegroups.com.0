Return-Path: <clang-built-linux+bncBC3JRV7SWYEBBUGEQOAAMGQEWWUTU6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A6B2F6F79
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 01:31:13 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id j22sf2344442otq.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 16:31:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610670672; cv=pass;
        d=google.com; s=arc-20160816;
        b=pjZBEM+ZZRIJ1uR7231WVGX+GHiRm1QKy6yGBP0IIWuyg9CGIYv565ZMXRv9tQ6QaO
         BAZ4nnbCw3bKYccz6J5HPGz4bZQ0+KVARoXLpamRN3Zx6vfFu0KTam/vJ95eSWfRfBqs
         Ivw9G1HWSFDDBAl/PVxksrvVkDYRjpmS09iBrkFqw6PihesP1Ri/0eVqwqaewVNGVFiF
         HxvI/l8ANSIeV8ZX8ICWFaEFS+8aODFccR9hQpXv66p09UR9QZwfEzkD4MHDchBKL8xI
         5daA5N3d3ry/n2Gl1qaQ1c5Vf0PXO4Vq9itVbHoTNS9StfJtv2TbCOSt2Ar/1WlX8smy
         odaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=H0PetRVQoemTHFH8JXzvXiTYqpZOYAbdK6+LmBLAY5U=;
        b=q/eXjTy2CcZnQUiv0bjsFM/ds8SOnybaKYfs7xdNbk3rEi18FCIvuGW/BQUMMAurN3
         gbpSJJni19U/Xl+FFDRrsaKXQhtWLkzBnHPpcsUek9CraB4YN0JlfdHht69XzPrG46ho
         RZx6pBJE0FAYgrwoGTTEOza2y3CRArDi/tV6iqcRanKOyaYiD97o+Fs1+vz61Dpki4Yl
         HjEqVvvZKk4Ty26kxTwGoDZwubPG3S9oXyVaeW3pXiGuC/BTifSKpHgIumYEGiiUHh/S
         kriJb1Q1ml+YZd1JxwBPYY4lEaLSroe/Mp3UcV5aZu/U0Ma3ReF3OTFoQ9rJLZE8+slX
         Wmyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=ttbobd2R;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H0PetRVQoemTHFH8JXzvXiTYqpZOYAbdK6+LmBLAY5U=;
        b=r9la2jFLty2sUbynftB73ciz435n666QIjjSsCOpY2gZswI+9KKyMuw2uIf9zlGib6
         vksQhLRtUU8Ni9dnfKDxqNCnjaSc88N7QBGd3WC1KF7qqLvrGjWT6DEI6o1NkW+kfV0B
         sp4225rGE/yUszKEYq+WrGKXQZFRhvaIY9kqPUv4hVaSOptJA9DA1DQlhEH3S1Qxc9rh
         NLomqoarGC6X1Wh9fSzMeph3VQ+rqIVkulOCQtwLZMMERoQN7fDLe8n80grgoC7Do3SX
         3Gido+q4lB8NejE2am0gM5OuzFsF1NsoOJYaoXQdVaCnQkNdLNGsEfjC5F3NlD2zj/v8
         eEfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H0PetRVQoemTHFH8JXzvXiTYqpZOYAbdK6+LmBLAY5U=;
        b=WNe+mBp/nw/LL0uYdDKB+7+sLCwvFTo/7atwgRQPXeg3Y2ZuGQTqW0+efyqpWBEMgi
         4wxFMvt3c5+EUC03FB1OLGUqr13O4bE+WlJ4J2wB/c+afT62YQ7Nyw5FnGofaQ/Rdo1N
         GISEtdLBt8G8D7G8r56Y/CfSqXKt8qVKYj1rHDQc6XVdN5BEKTsqX93Ag7xXuHvrEj5Y
         JgJScsuDCQKW0VIx8Im7oN6Uv0asmF5hw9COYFJPfWgwafmc6MFZUNqTu1n0ga/9UJem
         OrDAxGMgs85bsUpN/ya6/hDncgQR5EYyIMKR9WSa02YlZZV1rP835ZJ1reyubvj6sR/a
         q74g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533uYihRf4t/ZF9iXXzQ/gChgqeBqBaO0z0PgASXxQc9D9NdmuO4
	peSuvozVaNa/KHmhikazOFo=
X-Google-Smtp-Source: ABdhPJw1wNj5teVJSXVy+X2/AGOY0I0vrUm4+YH6rfagUPsGmY2AWD41gd/7L/jjW2XHWbjbQvMb/Q==
X-Received: by 2002:aca:2403:: with SMTP id n3mr4200530oic.136.1610670672493;
        Thu, 14 Jan 2021 16:31:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4694:: with SMTP id k20ls1778888oic.0.gmail; Thu, 14 Jan
 2021 16:31:12 -0800 (PST)
X-Received: by 2002:aca:540e:: with SMTP id i14mr4171788oib.57.1610670672092;
        Thu, 14 Jan 2021 16:31:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610670672; cv=none;
        d=google.com; s=arc-20160816;
        b=KClJUOPFrhVrFI104sz9jC8boHpv/I14j4XMGSF004er0FJGjxNfhEOZ8MJaLAY5OY
         ZPFFYVz8v7eqTjkEUUdvx1ouMC0BRUxTLd3YBLjR7Su8QY2Q7lWpgutGFMtbj9uIRgbZ
         ZSFlchGC0rZkHw3w4mNKVNBGzaDVcEjBO/8MnHiCLL3Q7xDqpE7+DRZAcPh3ECpqF/O+
         e06cyNR6XXsjv+UZNFnVvG1Fn+PzEGauzkXFI0hFnSUDrtWxIiO8oAjBiRWA22ZnY6Q/
         Cx5e6cckfdyAYV0oeZy3GanBZyznREnigqVIpaRBfgqz3WIIarHNbrgUelXAbj9W3yCz
         Al8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=tpp23TTcS905xSBNUJ3I3+T2xpc999AWSyIQrUjVakI=;
        b=SK1lFxMypHI+jCBVDLZbnPduLRcj8hocfoiPqzAUKWklBi6XRDDkX8Kxqci8J7zvFW
         BlMlaHxxuXKw/Hly/U546M7Jw66xXKxj4jXoSOqtqvwhXAYCYA1xYENoKyQPL3/YvS9n
         NPSrsAJRvihFORGUtyflv/UOUq7dhn5c0qR2lNsGqD06NDqIYFrP/o35idR0Q1ZEzSn8
         KtKeNdV0Om2RVOd/qMPEvZ0PyqwIiyPx1JEoxWm+xM3VxuIoBBfg8F7iAHoCfEBJJWtQ
         meL86qAnTIp4XBy4GSCdULxCcl0UGXRZzVn2RVWXQhjVgNMzMgT9KuaCJCGdzNYeBu2Y
         N0Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=ttbobd2R;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id x20si699788oot.1.2021.01.14.16.31.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 16:31:12 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.ostrovsky@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10F0FAJn024525;
	Fri, 15 Jan 2021 00:31:07 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2120.oracle.com with ESMTP id 360kd02u5v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 15 Jan 2021 00:31:07 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10F0GGro137727;
	Fri, 15 Jan 2021 00:31:07 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3030.oracle.com with ESMTP id 360kf2tkfp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 15 Jan 2021 00:31:07 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 10F0V5St004164;
	Fri, 15 Jan 2021 00:31:05 GMT
Received: from [10.39.240.226] (/10.39.240.226)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 14 Jan 2021 16:31:05 -0800
Subject: Re: [PATCH 13/21] x86/xen: Support objtool validation in xen-asm.S
To: Josh Poimboeuf <jpoimboe@redhat.com>, x86@kernel.org
Cc: linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Sedat Dilek
 <sedat.dilek@gmail.com>,
        Kees Cook <keescook@chromium.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, Miroslav Benes <mbenes@suse.cz>,
        Juergen Gross <jgross@suse.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <77629463ea258e47d8d53bc8947da24dd2923931.1610652862.git.jpoimboe@redhat.com>
From: boris.ostrovsky@oracle.com
Organization: Oracle Corporation
Message-ID: <46bd6b10-6d8a-1065-069e-565c45af7128@oracle.com>
Date: Thu, 14 Jan 2021 19:31:03 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <77629463ea258e47d8d53bc8947da24dd2923931.1610652862.git.jpoimboe@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9864 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 malwarescore=0
 suspectscore=0 adultscore=0 spamscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101150000
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9864 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0
 impostorscore=0 bulkscore=0 adultscore=0 suspectscore=0 malwarescore=0
 lowpriorityscore=0 clxscore=1011 mlxlogscore=999 mlxscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101150000
X-Original-Sender: boris.ostrovsky@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=ttbobd2R;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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


On 1/14/21 2:40 PM, Josh Poimboeuf wrote:
> The OBJECT_FILES_NON_STANDARD annotation is used to tell objtool to
> ignore a file.  File-level ignores won't work when validating vmlinux.o.
>
> Tweak the ELF metadata and unwind hints to allow objtool to follow the
> code.
>
> Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
> Cc: Juergen Gross <jgross@suse.com>
> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>


Reviewed-by: Boris Ostrovsky <boris.ostrovsky@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/46bd6b10-6d8a-1065-069e-565c45af7128%40oracle.com.
