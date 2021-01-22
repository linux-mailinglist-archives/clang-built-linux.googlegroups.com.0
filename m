Return-Path: <clang-built-linux+bncBDIZTUWNWICRBUEMVOAAMGQETBM6ETA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5514030031C
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 13:34:26 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id o77sf3302782pfd.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 04:34:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611318865; cv=pass;
        d=google.com; s=arc-20160816;
        b=zl04/Zg7Xow09JcrDQ75guktWkwWpsnyll7vCY7WoKL6PPyMMG7YOVsIslc8OePWKb
         lMHCa2gm8KipqCARIoefkIbnK3RCQaq1Z58Ay/mt0z5r/6AXurQCfm85VnSqPaQ3LsBP
         13vY/LzbadtJAGnHk5aYXNw3njjJFInxCeDIuS9JS5Y94LgwqadPXYVP72duk8gy1QVv
         720cP4QS7no5L3uEpq/JMzaLrGhiYGfUcZV/acA+SK/VRwYfDlGb3EQdiVJTe6VmeHfa
         xZOw4bZIuhVxiF+I5KKCzm6HE3V2W/iV3HdP2l38oUpTL/h1jBsr8k8V4E5UhDtyQFVl
         v9sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=8lsFSyx+rGJ9eSpPQi+wo7gxm/4V5keHLxA3JDXBf+Y=;
        b=wJl0a0R5kDuGsJKID0Tl3dLmgxaIyo7QRBal1PGn6sx9mbaN/X3U4JAD9Cg6w2+9wh
         7nCqZTACCxubpOlftdx0VPCRqZLt0HtDULkYr3lDpsA1IM8qjW6LcfjBotlQyGH3sWcL
         xYimba1vcZBEWnn3H1yJ5xHHrh0D2CQsr0Gl7fS/VNu/b7+qeBHAcqS1tDdqceWNgIJ7
         5vPUpg/UGNOrP/zr0VFmjF58xo41WP3l05qCXXKbFM/tJgzBDp3+H3rlnhL4fMgQ/j2R
         PoMeMgZOJXXPERqkOsywwM0I7d93K6d29ze8HwuOlFdtLru6GswLnzB8yRC0OvHxv3R2
         L7Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=tmNTmEw3;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8lsFSyx+rGJ9eSpPQi+wo7gxm/4V5keHLxA3JDXBf+Y=;
        b=GNp2Zrgv111cipQRIDVvsInV/v342iqe2vAgKIMW8x01DcFX+a3i1c9V1IJrE8Oquw
         EXc/NwINmyBORgLEP7Vkamp2QfRlnPHF5Hyseh4XoxzjR3JUfUEN2tpk7Y+jG2IF1hXx
         RjDnZq8b0ZAm4MMxFUV/jMqB/LDSbYTZT2wFg1KxuROH/GvfyI88AQ7/W3r4pfCeQwuj
         8RT4n7QjIZ/iYVM9muCF1w+1yx08AS7UQ/a5nG2lTujl8ekHQU1Uer7u9lwSVJAxXgjV
         UvdexZT7bTSsklt5Iq0J7cdK6ebEUSynyDwLzkve+xN6r6XtBRiSqkMHQ29PXtVufU1d
         3kqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8lsFSyx+rGJ9eSpPQi+wo7gxm/4V5keHLxA3JDXBf+Y=;
        b=Ut4cRXE7wR7OJsbCY1N0ZG46Pqvr35IMljC6NQBcwnRoRWgYu6EGSijBMie2ID54Qo
         G01xsWlrYG352iMGGVAG9Yz7TVY7TyC9OvsuV1Gws0oBuymYUCx4VIlg0s4/IkOmiT3+
         tBG/VhdYbXTko+WvtYrUpv06BntXFwXKxQOCkvgIRz0h6wMhHKGZX0tlGAqBs7ka1Lus
         ePHWqXTuXmXcIDuhtPMBkXDL1isBWdM2vWf2xJXwBq3IJHFgGBFoVAASLhd7+Un2cFho
         z18AH4u9nfiVNJv5KZUs5ocPd3B5am35fMql6WAgy0EfrMJ238/B5ZjbmPTpcdGeyhf3
         rjHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318xPemTxE9r0bqgu/G23onCz4vsGZXdCvba4yGtC2tAunI6yS1
	o393zzFEO2eXCbWcylUUveE=
X-Google-Smtp-Source: ABdhPJzeRPMWwve9CH5RQy2VbZ9Qua0hv0CxH2megdQRDN3N0s/fgM3kBNxP2lnIgSS/9t7f4QBdNA==
X-Received: by 2002:a17:90b:128f:: with SMTP id fw15mr5252863pjb.8.1611318865087;
        Fri, 22 Jan 2021 04:34:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:545e:: with SMTP id e30ls2117644pgm.4.gmail; Fri, 22 Jan
 2021 04:34:24 -0800 (PST)
X-Received: by 2002:aa7:8f13:0:b029:1bd:f965:66d8 with SMTP id x19-20020aa78f130000b02901bdf96566d8mr1115546pfr.80.1611318864430;
        Fri, 22 Jan 2021 04:34:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611318864; cv=none;
        d=google.com; s=arc-20160816;
        b=GYVVxlFxI3nAVYenru/rhrqKiYTWk5KzhE0QHVLrVyGAW3JcD1n4/d3UgDJ9LlLSW/
         zkvjIAmrLrHWDPW/SVDYw15g7EY9S67eE6NfhCSqs9cUhh0NDWUnvPnr4gMe4XwU/h6G
         hTXKlOxxbBFOGX6Mzl9gKTVe65hzsInHTE2vAmCv4p6DogchgtOBI/pOP3k7kl15tIa0
         awRd7O9bKJe6Ye7IeGLcjWUYpQHfuM8+WpzWpsArzcU249yC68Pu6R6SHA1DxNCxFnE1
         E+xTfVzw1o1AXU0j9RrCZU0ej9o1HmZJQjxtgDptZYrX8poHi3v+udG3HcHOoyV5aqRX
         iUpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jIuCDq1ZmhYjXckv6wk+/8lC9So5NyF6llF4m0ZdrDA=;
        b=pAAwKzvSsMFzKsz75LuwGgH78QdCuvyoSktAOzLtHHELhkg8zJXSooJ/t4ZPGxe4t0
         X6mOfLTZn4OZgJD44pSiBT9TYsgKDIU6YeBwQcS/Bg5f7haml/GP4dgq8Py/3/488FCU
         MfCLx83RY/jcEY1Thkot0FM5AzNdGCSubLbktiEw6zCBmWfhpDK5lx+fAxhBczVw/mjb
         ycv1ZATEFcqw6M16fCcqwYG/O8ICO9HVUpTkgjKMfKLoM/cFupQhSf+8RcgzKYWvgDrl
         a6TQeUzEPX2mpImiI3OaxR4Wvu618n7uZ6VtbK6TyaEH+0x/zqXUz8ThMxSUdQMZRQih
         w5Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=tmNTmEw3;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id z18si463912plo.5.2021.01.22.04.34.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Jan 2021 04:34:24 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10MCYL52136295;
	Fri, 22 Jan 2021 12:34:21 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2120.oracle.com with ESMTP id 3668qn3tr4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 22 Jan 2021 12:34:21 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10MCFruC189345;
	Fri, 22 Jan 2021 12:34:14 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3030.oracle.com with ESMTP id 3668rgtr7x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 22 Jan 2021 12:34:14 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 10MCY4A0004548;
	Fri, 22 Jan 2021 12:34:08 GMT
Received: from kadam (/102.36.221.92)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 22 Jan 2021 04:34:04 -0800
Date: Fri, 22 Jan 2021 15:33:54 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
        Joe Perches <joe@perches.com>,
        Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>,
        Pia Eichinger <pia.eichinger@st.oth-regensburg.de>,
        kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] MAINTAINERS: adjust to clang-version.sh removal
Message-ID: <20210122123354.GR2696@kadam>
References: <20210121160115.4676-1-lukas.bulwahn@gmail.com>
 <CA+icZUV3p+yQYXn=iVseNNQwUSvoMwztLxNDOFpdFb731kDOJg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUV3p+yQYXn=iVseNNQwUSvoMwztLxNDOFpdFb731kDOJg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9871 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxscore=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101220069
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9871 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 priorityscore=1501
 adultscore=0 impostorscore=0 mlxlogscore=999 spamscore=0 suspectscore=0
 phishscore=0 clxscore=1011 bulkscore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101220070
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=tmNTmEw3;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
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

On Thu, Jan 21, 2021 at 05:15:56PM +0100, Sedat Dilek wrote:
> On Thu, Jan 21, 2021 at 5:01 PM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
> >
> > Commit 6c8ad4427f6e ("kbuild: check the minimum compiler version in
> > Kconfig") removed ./scripts/clang-version.sh and moved its content to
> > ./scripts/cc-version.sh.
> >
> > Since then, ./scripts/get_maintainer.pl --self-test=patterns complains:
> >
> >   warning: no file matches    F:    scripts/clang-version.sh
> >
> > The CLANG/LLVM BUILD SUPPORT section in MAINTAINERS intends to track
> > changes in ./scripts/clang-version.sh; as the file is removed, track
> > changes in ./scripts/cc-version.sh instead now.
> >
> > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> 
> Good catch, Lukas.
> 
> As a tipp:
> Next time you can pass '--subject-prefix="PATCH next-YYYYMMDD"' when
> doing 'git format-patch ...' (or whatever you use to generate the
> patch).

I've never seen anyone use this prefix before.

What does the date really help?  In staging, we apply everything on top
of staging-next and if it doesn't apply then we don't investigate, we
just say "doesn't apply.  resend if needed".

We may as well just say [PATCH linux-next].  No one is ever going to
look up the date if it doesn't apply to the latest linux-next.

regards,
dan carpenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210122123354.GR2696%40kadam.
