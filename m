Return-Path: <clang-built-linux+bncBCYL7PHBVABBBB5ZWGDAMGQE34GFEHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C9A3AC65D
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 10:42:48 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id u11-20020a17090a1d4bb029016df2fceb76sf5756818pju.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 01:42:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624005767; cv=pass;
        d=google.com; s=arc-20160816;
        b=jk57gqeG8LuYkszzHr4V2q0ECTqO6JbmhMEEFtZxVWWY5jilqG8JFBx7p1FMdutnX/
         xqDUOxvYC8+syHrOLuAKHlWiJmg2QMBVM2GyVxU9RA1jPAgkGA2Kb1UEM+88Xm63bbMt
         IrFM8W62FM6yx2wN17VcNh3PKTBRYmNtUw02Z94RS/sCrfVMp5+vxqhyXs30rmMdHbVL
         71NHMss9OHXkMNAnWJ/5wLiNQAx06ZB1TeHVOF2OITg1fCbMWy0pDQddZBjMQHD3mz/i
         /CO2ZBVwDZWVVgb13cge6dtSKFwk+9f+Rzp1vQGlTaQ658MmsVf7+SJWFOSjllttPB1s
         CunQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Zrj9Y6N+eAhdYykBEU4orOCCeYg85s3oOY0tnb6QJqo=;
        b=VemAknT1eeKfmJx3mTIyv6BibzNl0gILYj7rDY5qWPuRjZddgwe7Y8dGK60Lj2MC/U
         MVZkXMQ7Ow/tn39gKtOngNkEmssDUflu+szm3IPJTHLOvV4n5f1zG7ap5QA1YEr4rR6n
         Eh4T3flgUg76jJY2yMloJeat++7Bd6O0jDRkjdtP8dcUlwkivgH8XJWsxbLrw82AjJkr
         wzzcqCbz0SzTOUBEEKETbEM42HuMcrmv8tWLOJn574vN4lNnWViMUogUhQFgDS81WtNZ
         5PJxNlixcnpnSvEeZBIKVNmNDQNMRV0DauQ6F4xlhUd4gSP1s0iT70Z2sYQYWCTt3fPc
         NPPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=anGd94GR;
       spf=pass (google.com: domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=hca@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Zrj9Y6N+eAhdYykBEU4orOCCeYg85s3oOY0tnb6QJqo=;
        b=COM3cQIqdjl8lzJwBS2TMriUs2i/HuBpFYafxcX11no53NFeJhVSkWN2l21onVVj1V
         PwjldxBFWskaRs4IlcGj4c+LtrajVJ5tR+EVaFGoKMMolLMDvbmZRmVFgDFUIKj4e+Mb
         MmyasAzDfdJaWaqAcUQXvu2/jJqitk1FMtdbesmE8e5CJqyJbpmQm8yzie9OACvJYaLj
         Iev62AMP0QTEyUGunQN7IdAiBO7wolSZYLqkS2rmpCUwvEjWrfRtlKWuyT6dpqPEamQS
         WMZRaDq4mbHIw+NTO5glt3IAcY/2nk7puC/mSBsW2Vp7fW4HyO7LhsxRL7/ull/hxWLG
         Fpbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Zrj9Y6N+eAhdYykBEU4orOCCeYg85s3oOY0tnb6QJqo=;
        b=oYIkITlxEzSpuCbxbo5Uqd4MgnyheNaMDrCrfEkxNfvY3AOEz/5MxDGjF0Wq3LLfbo
         vE5SRCJupIbtUAdF+mViiMGK49zjJ443YQedOQL1aC7Hm6m32yQQ1fLAyaJ3EZlXBH+k
         iYWuZjqLmWq0m85AACoec1FBTzhaDxHE2SBzca2qPjYI6vefq1t7ZzlHCPZN8t9f14Se
         r0URczbBTUVnZ094oBV0WZH75DDMQC0vSne683jCyta038mCFCQCk2dOJfsgV+6PxXfB
         MUg4SRn1aCmJ0sbZmrmiKq9IU0wDAgHnVf/KMI7V0ak65wRQ0ZtKbyHc/AtmUISTKyLe
         AmIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532x2VnW3bxecrmVOsMirJwxi/0foFpgdVTP9YZLhoEbxIjY947i
	/PcNkcC/43T+qZmR1+2k/bc=
X-Google-Smtp-Source: ABdhPJyzfOydEEjXqz+DFRI8JQajP25/d2oDxQH3HR5dMJ6ue+/oEcp12AM2/5luQgNjvg6IjSUlJQ==
X-Received: by 2002:a17:90b:78e:: with SMTP id l14mr8449277pjz.4.1624005767393;
        Fri, 18 Jun 2021 01:42:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6445:: with SMTP id y66ls3950693pfb.7.gmail; Fri, 18 Jun
 2021 01:42:46 -0700 (PDT)
X-Received: by 2002:a05:6a00:1a4a:b029:2ff:b1c:e3fd with SMTP id h10-20020a056a001a4ab02902ff0b1ce3fdmr4089620pfv.1.1624005766845;
        Fri, 18 Jun 2021 01:42:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624005766; cv=none;
        d=google.com; s=arc-20160816;
        b=ch5kx04qsGav0nDbfjpJosvonJA1vMt65XOhB6B2uaw2uTTTVwFSe+oRGkDEQ+EDl/
         4SKkSuQyXyGFfZi5BMJClTelkl9dHxfaHzUbS6FwBKGBWqOM0AZnfBMj08TDrNF9mLtv
         X1CE6ZrDooLttNIUxRB+luU9wxdVH497uIY33XYE1Ead/ogT1tivGqFOPECWSvJe8Und
         +6eRZfeHqki1MAuYZ02yOVdIUI5SNk+hrNXAjIPX25q/LpzyXuHCXvC+8K8q5r3djxDy
         xPv2TJJK122nwbi7RQ8DgGhqHgw7+G6UApbSAE0+cFI3eBVatbErIVnwSung2I+MOzXW
         KHrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WbzSnA8nbxcmk/DChKVe5ctPYDstqZgdtPrr/A1odZk=;
        b=rJm+BjWuKAjl0oAiIdfwhLmgdHY/apQVBkoOMbSPaWtHqdPL+XTFnEKN0GQhsoWm5o
         bJrpOz5gGDDC1aORzHSRFVqnxF5WE2UWo7Vc6gx+x6KQkW0XT7hry8XPdyc15HjUeh/0
         jVCUZfAqYdcQ8blvnNJyh+IBZB4Wz14IUJrRjHzDC/Oxr2m1vj624Ijn2QhV+h0T7ilu
         Itab8vIyrQTmdKQncwNVFidWJVzwiR3iygXAEHjF3ABBVOuisjbRzHYjfVBSF/OJ3btT
         pX3ut+FE84cBCOtPg133A5TFIxdifWo4H681frTft28GJLrc4HLqipAQlimdNwhqXT3u
         XO/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=anGd94GR;
       spf=pass (google.com: domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=hca@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id a15si1008350pgw.2.2021.06.18.01.42.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Jun 2021 01:42:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15I8X1ts086417;
	Fri, 18 Jun 2021 04:42:39 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 398nvavcqj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Jun 2021 04:42:39 -0400
Received: from m0098419.ppops.net (m0098419.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 15I8X3fC086574;
	Fri, 18 Jun 2021 04:42:38 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com [169.51.49.99])
	by mx0b-001b2d01.pphosted.com with ESMTP id 398nvavcpj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Jun 2021 04:42:38 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
	by ppma04ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 15I8Wsr6015449;
	Fri, 18 Jun 2021 08:42:35 GMT
Received: from b06cxnps3075.portsmouth.uk.ibm.com (d06relay10.portsmouth.uk.ibm.com [9.149.109.195])
	by ppma04ams.nl.ibm.com with ESMTP id 394mj8u6mj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Jun 2021 08:42:35 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com [9.149.105.232])
	by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 15I8gWB624117562
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 18 Jun 2021 08:42:32 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 9584B52052;
	Fri, 18 Jun 2021 08:42:32 +0000 (GMT)
Received: from osiris (unknown [9.145.4.27])
	by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTPS id 154A75204E;
	Fri, 18 Jun 2021 08:42:32 +0000 (GMT)
Date: Fri, 18 Jun 2021 10:42:30 +0200
From: Heiko Carstens <hca@linux.ibm.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Vasily Gorbik <gor@linux.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
        linux-s390@vger.kernel.org, linux-next@vger.kernel.org,
        lkft-triage@lists.linaro.org, Arnd Bergmann <arnd@arndb.de>,
        Stephen Rothwell <sfr@canb.auug.org.au>,
        Naresh Kamboju <naresh.kamboju@linaro.org>
Subject: Re: [PATCH] scripts/min-tool-version.sh: Raise minimum clang version
 to 13.0.0 for s390
Message-ID: <YMxcdv/1taBevSjP@osiris>
References: <YMtib5hKVyNknZt3@osiris>
 <20210617193139.856957-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210617193139.856957-1-nathan@kernel.org>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 4bCbJ863SOOjvOHDFC_wa6hO-bo1QLk6
X-Proofpoint-ORIG-GUID: xW4I_Z0qNkRAMI_ghInzYLw6jUTbad0d
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-06-18_04:2021-06-15,2021-06-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 spamscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 mlxlogscore=999 malwarescore=0 mlxscore=0 suspectscore=0 clxscore=1011
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106180048
X-Original-Sender: hca@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=anGd94GR;       spf=pass (google.com:
 domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender)
 smtp.mailfrom=hca@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

On Thu, Jun 17, 2021 at 12:31:40PM -0700, Nathan Chancellor wrote:
> clang versions prior to the current development version of 13.0.0 cannot
> compile s390 after commit 3abbdfde5a65 ("s390/bitops: use register pair
> instead of register asm") and the s390 maintainers do not intend to work
> around this in the kernel. Codify this in scripts/min-tool-version.sh
> similar to arm64 with GCC 5.1.0 so that there are no reports of broken
> builds.
> 
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
> 
> This should probably go through the s390 tree with Masahiro's ack.

Thank's a lot!

I'll add the below text to the commit message, and apply it internally
first:

[hca@linux.ibm.com: breaking compatibility with older clang compilers
 is intended to finally make use of a feature which allows the
 compiler to allocate even/odd register pairs. This is possible since
 a very long time with gcc, but only since llvm-project commit
 d058262b1471 ("[SystemZ] Support i128 inline asm operands.") with
 clang. Using that feature allows to get rid of error prone register
 asm statements, of which the above named kernel commit is only the
 first of a larger not yet complete series]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMxcdv/1taBevSjP%40osiris.
