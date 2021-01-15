Return-Path: <clang-built-linux+bncBC3JRV7SWYEBBTWFQOAAMGQEGCKWG2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA8D2F6F84
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 01:33:19 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id c9sf3570591ybs.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 16:33:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610670798; cv=pass;
        d=google.com; s=arc-20160816;
        b=pIrdWLFsYn3gDxUMb8fPNAGkqAxF+vZGient0p1rUNc3Gzz5/JZopq1+dPkw912005
         wSJerOsLbaLbR6JvGEzUTDXGXiUc2fbSrNrGkkRGmPY7mOl94fagPN4EEmAa5Go17T48
         CIBTdlVOUa1CKZeGTlyTku0t8Pb52vuGQ6p8RyuY0eeKtBGsMCN3W8q1AB69eBXP1rMi
         I8KmBLiue4ECWVyGOKHpUZtmyF663CL2SSSX5C2EPdGXKzpUrZh89kJQLANSV8Pf5ejE
         ryuboga5Bic9K2cyDBEStpTlEBpg2vbOn+wQkwpwDkkuqJ85WtuL6AB+JIYt1rYjcr2l
         BKMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=80HEtObdNS+wtjJKTAK0tGdeNoHKorzNH9sXyTP6qrY=;
        b=IAnQ/oKnBpEC5ndZRCr/sddYolCWxV5GROkTRG5NAWlY/MPEJMYv3BMWO7jfUKszEP
         kTY71fIHEkjkf91TFKxRlxhUZqE80XB2VvB5z2oGAkohSG4HJRp9Ti27QHsPAa3bVdPd
         0tyYTpKRxX/KjoEWEgTyWiM+Vphcw+nO2i0D3mUb4Gnj1kv+qF6NXxQtaLBrmrWuKdx2
         yDFtQlBgfmwRpQPQcnEhsRxWlnVs2D3GLJ1497RzE+thScJ3zugGO4Bq54oGIX83t/2k
         0dDHUTKB9YHtTQeN1PYxSkxJ1gTc/piqBpakvE9e1uFygIHD2LQe5JEgP8TCBesZKjdL
         7a2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=XE7kWDv7;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=80HEtObdNS+wtjJKTAK0tGdeNoHKorzNH9sXyTP6qrY=;
        b=mMeexdqXkVTeGSH65FunyDMwQtJan8OoBAoxK9ftR5GrIZQs1SVj9SC0OdkvsxCLM7
         RZVJY0PhMTCm1uQgkzizCYLilRUzVWEY2jFrdE+oc4zS5DMNGozEI44VKLItvMAypLYN
         KGhU3SOFkdGsM24ulp48M4OTU/xbgf6/kY1RaTnGN++dvuoVZNAUQEvruU6kJpI/3HUG
         rSigfntuZ77M5Ahj1JpleufT1GsvKaNuqtWP89EjRytSQaFRaaiq2dtXjm7D9U3bdS4T
         OdFZ0nyIR8343hf+Wy1zq9UZI+A69yrvHAZVFqm5xrRpQWEJPx2QlrdWj6QEizMQ3hDB
         rLew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=80HEtObdNS+wtjJKTAK0tGdeNoHKorzNH9sXyTP6qrY=;
        b=SuldFerPqQs2OcfMoIUmhqNeX5CvaBiysaG6xiNerSWc47JCgSQdP8xJFzbbFmPmEH
         bk6IQl+9GzZgMVV1MyaOeussPYjJI3jKB/sb+5TcHBh1/25mJcBYXe3zqyU0Nvxjf1g7
         GlZBYfTqJ/JLasqfmBTDBy9ZtcWgPPoeXrPc7i9Dy1dwgKG6r7YbDWwrh4Dev/3VwQfK
         GgRfP+hk9J4l6Z+0giMOiEnAGCg897rf2I8mFHrcSD5149Y6Jm2g/FfmkqbNGir2eNTY
         tfTvtjBJGas3bhBzZ54zXNz7l8++ZfnrlClSafoHmjS/3ZuSZ3b2YHu1JILqtg9vy4PD
         Vwuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531U4RYX4rRfKHKm6CEMM/woQo4B3pVqw7rEaXujpBFI1r0V0KXp
	xtrZNQu/JVL03XVz3hsqoRs=
X-Google-Smtp-Source: ABdhPJwSBCoaPrLHrG3lTXBg47k+BIIGIq2YZyoK2eFjQ5Wdhx+E6kl5cKcUjDxAJOX7G+QiOvvitA==
X-Received: by 2002:a25:d1c9:: with SMTP id i192mr13550298ybg.207.1610670798627;
        Thu, 14 Jan 2021 16:33:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:f80c:: with SMTP id u12ls3573760ybd.4.gmail; Thu, 14 Jan
 2021 16:33:18 -0800 (PST)
X-Received: by 2002:a25:4f8b:: with SMTP id d133mr1822635ybb.402.1610670798221;
        Thu, 14 Jan 2021 16:33:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610670798; cv=none;
        d=google.com; s=arc-20160816;
        b=PpELk0oV39t2/KJ/Mr/wPmjSFs3l8NUT203KTOTQNXEQqRbfIjyZzUaR+TJwQo49K7
         WJUXntEx8MIlL7CBSKpVtYY8irAOZm5cYnuSpPtKxlDNSnYDBl26yJ3+kPfSRljwOJci
         r2rN9AW9G4Vue7nPjayN9Zz96L7tUUO8/PvbNPS4O74L7GqLNT29VIb2VAEuRthZeNq1
         E2LquPHogajJ972+mVwaewEZKlF/902tyNS3UFcE2ZMbzWd5G8wRNEtjbX5GAoK4NLAf
         Kwn1YHmHpw3nhJ+PEoxd9sdYUD8YDcQIQlfYK3BWOqErpObqumWzSzM5wTdxg1tVv3M6
         RFUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=EoYf07ye+2pvEM8W2e9X5zV3+hXXa21IpM2ZAyZNnz4=;
        b=lgCRtbGYZb+KIcvD6owci5mykTHct+kxlcX5ed8B1MWMY5AM+jUJgPHCQ0NxABz4zR
         ifXEvSfRq/LXqtdBA3qscHNExLItu441mJfDiG/lBX5J2DbuEbNe5h4tfPF+gHjHHHb6
         iyr41TcK/fccyWZf0pfXjtEOcdd5RgTeQwipJ6dWhLmuGT+O00FULZp6nUpXrvVpdhwN
         tsiU1VykBybnN/JJrOvpWABkFBStGlr19v1uGznb+PgU7S5SuHvC8Lt4LNGH0B669tcO
         C2f0fc6NcPU3dI398PeSXvMbnATfqVWwHnwRiVb7fSfTnTVOwl1c045FmNwGCO1qlnno
         ImwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=XE7kWDv7;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id r12si558832ybc.3.2021.01.14.16.33.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 16:33:18 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.ostrovsky@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10F0F1Sm192568;
	Fri, 15 Jan 2021 00:33:14 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2130.oracle.com with ESMTP id 360kg22vm8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 15 Jan 2021 00:33:14 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10F0GErJ137495;
	Fri, 15 Jan 2021 00:33:14 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserp3030.oracle.com with ESMTP id 360kf2tnf5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 15 Jan 2021 00:33:14 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 10F0XCHX006621;
	Fri, 15 Jan 2021 00:33:12 GMT
Received: from [10.39.240.226] (/10.39.240.226)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 14 Jan 2021 16:33:12 -0800
Subject: Re: [PATCH 15/21] x86/xen/pvh: Convert indirect jump to retpoline
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
 <adfa2afe5ddc831017222db9f48ad0fbff17c807.1610652862.git.jpoimboe@redhat.com>
From: boris.ostrovsky@oracle.com
Organization: Oracle Corporation
Message-ID: <f7335fd4-6204-101c-c628-e5f30c9d4463@oracle.com>
Date: Thu, 14 Jan 2021 19:33:10 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <adfa2afe5ddc831017222db9f48ad0fbff17c807.1610652862.git.jpoimboe@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9864 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 malwarescore=0
 suspectscore=0 adultscore=0 spamscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101150000
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9864 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 suspectscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 phishscore=0 mlxlogscore=999 bulkscore=0 adultscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101150000
X-Original-Sender: boris.ostrovsky@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=XE7kWDv7;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates
 141.146.126.79 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
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
> It's kernel policy to not have (unannotated) indirect jumps because of
> Spectre v2.  This one's probably harmless, but better safe than sorry.
> Convert it to a retpoline.
>
> Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
> Cc: Juergen Gross <jgross@suse.com>
> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>


Reviewed-by: Boris Ostrovsky <boris.ostrovsky@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f7335fd4-6204-101c-c628-e5f30c9d4463%40oracle.com.
