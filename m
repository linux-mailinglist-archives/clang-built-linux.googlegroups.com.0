Return-Path: <clang-built-linux+bncBDE5LFWXQAIRBDFGR76QKGQERNY4VNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FB32A7BA2
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 11:25:17 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id d6sf531019ooi.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 02:25:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604571916; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yxe48cZ7AsENW8DvUtqeRKTyCjDcX2cZ7p/iPgnFjUVSSdrh62jLDXlnaF3OuXNgN/
         HpgFoxNYc7mdIzIG07t0tEh24XvhY50Y0YrWW1XcBYX0Tkv/Pv3QMbWr5c1LURlXVijj
         7AfezLktUzR81njyxVQ8ivrJV2XbXgufJOc4LjG4DJ92f+YwO+NGmjSO2yrQJA7wyFFO
         Fmr9A9EATnlMbvCpjx91/GWtrULVBAdtB7N3dXU3hND2/IsX+/0MzdYGtby1+GqnIrPw
         ky5YhNcamBjXuaz3S/mDMyWXKN6dOgN1NTo7DQHs0adfcz17+lCOMfFxOXh2KJYOy9jc
         ELCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=m35pFZy/Qz6Uf6FfknDExuDOUmCNdlFCO/7Raw/Jbmo=;
        b=uWnmT5ll+GG7bRCfOptZhoXD3kLliAs3YxkxU64qlYc49JtBB7FfRS3KUDi+VGhbcn
         soqpJKvGCXQ9QZakdnS+x5AnDfx0FXk5qAbMJg/ni8TyIVbISOqsmuuBi22YYjwh5Rq6
         qy2+/L2rgAlvoYLZZEGXQOQZAoGaPBWlH3cXwPOfNE/+ilcY/qwQvMTgKxKC65bl5PVJ
         YcuN9TfYUsyNDKPfrgo3iHlaN2p/jPyt6qaPKW2kvthaQ8C4b3f4x+WB0WRqnW1EPK9J
         YmfX4oGc+90mD/r5K/RpLx0cT6VhmtAGzdStskm38jWjtqA4bBdbrfBuQ0ySDZai2vHP
         Rx9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=VXVUWhZp;
       spf=pass (google.com: domain of rppt@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=rppt@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m35pFZy/Qz6Uf6FfknDExuDOUmCNdlFCO/7Raw/Jbmo=;
        b=s0gY/hkExbpG4ohyTBvF3m5Ow2XnckYTRhWcghnavx3hPz9LUW16IH/tJvV6U0L9eS
         fLbre8FMwANzsooBIApbovavVTzEiU0XE93sk37OgKJWoJXkiUGymMqnNkFmj8HW6IOM
         74WcJEZv2D7ABZUaAxAY5c886BTfypLwgN/364Ofm6xyD4yy0xmrMCSoWEv8NBPaoaMw
         1Od/hrEvVemeJJFn4jA+knWSZAD/41WCebKIuAxkFBUBxExhDQu83i14HBsZCB+Y/euF
         NYDb2gYjSPQdBepqHWgRhs48kHOlvyyI8vfBH19W40ybH6eKXXjwXo7kkqnlIXtuuFlq
         aPUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m35pFZy/Qz6Uf6FfknDExuDOUmCNdlFCO/7Raw/Jbmo=;
        b=tQUXzyTkqNI/5cvfQ9D0PR0eo6QJDFfi9NqCGtphoX/XCKlWb8oQrreYLcmTL/LF+u
         oEC7F2xyKbSZ8PHvZ/trcHPc9atBkRznMU11ld8NC5+jwHHpa7x4fSJbKe7xleNZ0Atq
         K+KSMt3ON4xR3Ebokq836jrY4bORurmCLQPDmgwrzeqImIgVyjWU5WclEpfv/2gXW8QM
         43zciAir58HzJcq6H7uBglvm/oXr2Oe05vJS09q+c9+NVo0gQP+QNG3lXBvWLYF5oj5z
         i/6mBldry3tOYiUj2pFeXaltR4cEI8hNImG4nSKikBxij95XyCPbO3YW2rHEZypx5jnc
         j3Pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ve/dm5LTqEVsslW5KJMmWW6Ksr+xo7rNDtZtLRoNR0wxuZHrO
	Zk0fxS+QXxcHx5nP1GYtFNg=
X-Google-Smtp-Source: ABdhPJyQgQapr8ICgCFNeprSx/RksIii6oprYue8GmRgkVt8pll4yN5FobhqoBaqkuof/d7KAuyNTg==
X-Received: by 2002:a4a:2e16:: with SMTP id x22mr1268556ool.84.1604571916253;
        Thu, 05 Nov 2020 02:25:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:a382:: with SMTP id s2ls84694ool.9.gmail; Thu, 05 Nov
 2020 02:25:15 -0800 (PST)
X-Received: by 2002:a4a:b308:: with SMTP id m8mr1275422ooo.7.1604571915811;
        Thu, 05 Nov 2020 02:25:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604571915; cv=none;
        d=google.com; s=arc-20160816;
        b=0wwNwLZ+Jx56jdEvmkudII9V3iR5gzPTcSuE2fsHRvSe397yj4Lx0svfeOfkS7aKBh
         FLpkGu/IoYWo7qq6nz8TXoYRaoQfRso37Y8e7R3AmetVkw4IYwRJEeWo2CdKDqG/hj5d
         42DlRXgQedzwEKF+2+MfL1kkKdTeOlyC4enT8nsWvngwYAcaFBadSLHaWEGdtpB5I6Lq
         6B/4qba4B4Jprc4qrVz6gR2M+RFuDVNGFbcGUCG/irpKXfkIQIKuhq2BAH5L7urmgTil
         zL4MyEFArsIugyUWwqWHWXDnG5tn+n8Me0megNXJRI4QQne1VrabG1ynAFrksPJrIiGw
         E1IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=sOgUr3wn2znTADPDGwQ9CyJ17p2qAqMZA6xHM8vXTLs=;
        b=uPCKZIilyHtKNIm923xZPoMpUBB8sEMljdJIVVF/P3lbV3aKXJgotozvhvSvS8y0rQ
         p6RbWIEIaKdP/mkvb0YurEI+jwr/mq9xmq9hhr1sge5ePoUrTfudi2rYsIgNLDFs45CC
         rVkaS0jAqzUuhjVX7oDMuZl5Pf4AY55ognjR69Vlu9WawuCTIKEqHZffGFORBmQ1Bm2O
         q22Sv+aBqYPqZ3JBAdHXrwN9My1qlvDSW98PulJb7n+gUwFxn5ZGKIWaV23094EtaKwL
         wJ/ZNAxb7vLc0ROsOa5m/djhHe+p2MESaqgbunJSAcmJSJ948/YIjDO7vGb+Wy+ioYGf
         WGNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=VXVUWhZp;
       spf=pass (google.com: domain of rppt@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=rppt@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id e22si18806oti.2.2020.11.05.02.25.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Nov 2020 02:25:15 -0800 (PST)
Received-SPF: pass (google.com: domain of rppt@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0A5A4Oxn022832;
	Thu, 5 Nov 2020 05:25:11 -0500
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 34mfaj0k9m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Nov 2020 05:25:11 -0500
Received: from m0098421.ppops.net (m0098421.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 0A5A5Wgx027974;
	Thu, 5 Nov 2020 05:25:10 -0500
Received: from ppma06ams.nl.ibm.com (66.31.33a9.ip4.static.sl-reverse.com [169.51.49.102])
	by mx0a-001b2d01.pphosted.com with ESMTP id 34mfaj0k7x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Nov 2020 05:25:10 -0500
Received: from pps.filterd (ppma06ams.nl.ibm.com [127.0.0.1])
	by ppma06ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 0A5A7Rdw002506;
	Thu, 5 Nov 2020 10:25:07 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
	by ppma06ams.nl.ibm.com with ESMTP id 34h0fcw9h0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Nov 2020 10:25:06 +0000
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
	by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 0A5AP4RY59834710
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 5 Nov 2020 10:25:04 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A4C904203F;
	Thu,  5 Nov 2020 10:25:04 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 6681542041;
	Thu,  5 Nov 2020 10:25:02 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.145.178.110])
	by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Thu,  5 Nov 2020 10:25:02 +0000 (GMT)
Date: Thu, 5 Nov 2020 12:24:59 +0200
From: Mike Rapoport <rppt@linux.ibm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Arnd Bergmann <arnd@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Abbott Liu <liuwenliang@huawei.com>,
        Russell King <linux@armlinux.org.uk>,
        Andrey Ryabinin <aryabinin@virtuozzo.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Will Deacon <will@kernel.org>,
        =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Subject: Re: [PATCH 0/5 v16] KASan for Arm
Message-ID: <20201105102459.GA82077@linux.ibm.com>
References: <20201030075655.GA1848109@ubuntu-m3-large-x86>
 <CAMj1kXH-ZJQBtPN1_ByRDcfRs16yJ2cKvM8z=Gy_LoKp-m0G8A@mail.gmail.com>
 <20201030080438.GA1849056@ubuntu-m3-large-x86>
 <CAMj1kXEMUrJnyTzJQaA0e15h54fAT5_Q6w5OiBFrjGmhZ10eEw@mail.gmail.com>
 <20201030084519.GA3748061@ubuntu-m3-large-x86>
 <CAK8P3a1Ckn5E0Ce+0xVFbOKVYdsyzjeRZ0Z03-OsVC8yaYFp2w@mail.gmail.com>
 <20201030090945.GA3635064@ubuntu-m3-large-x86>
 <CAFP8O3KuaYTEvmWK1pnufQuH0X3Eb1G6DK9x7mhjSDy1y7d1TQ@mail.gmail.com>
 <CAKwvOd=YTcdyJ30gV_U8mHP5ZfH2KcE+fSskog9GwUysrGobFA@mail.gmail.com>
 <CAMj1kXFq9QmdstHNoyGh+gzoEBCy0nav63HXzRZa9BM5JHKsNQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAMj1kXFq9QmdstHNoyGh+gzoEBCy0nav63HXzRZa9BM5JHKsNQ@mail.gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312,18.0.737
 definitions=2020-11-05_05:2020-11-05,2020-11-05 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 impostorscore=0 mlxlogscore=948 spamscore=0 priorityscore=1501 mlxscore=0
 bulkscore=0 clxscore=1011 adultscore=0 suspectscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011050069
X-Original-Sender: rppt@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=VXVUWhZp;       spf=pass (google.com:
 domain of rppt@linux.ibm.com designates 148.163.158.5 as permitted sender)
 smtp.mailfrom=rppt@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

On Thu, Nov 05, 2020 at 08:52:46AM +0100, Ard Biesheuvel wrote:
> On Thu, 5 Nov 2020 at 01:38, Nick Desaulniers <ndesaulniers@google.com> w=
rote:
> >
> > On Wed, Nov 4, 2020 at 4:30 PM F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@go=
ogle.com> wrote:
> > >
> > > About "ARM: Replace string mem* functions for KASan", it added .weak
> > > memcpy to arch/arm/lib/memcpy.S
> > > However, the convention is to change .weak + ENTRY(...) to WEAK(...)
> > >
> > > In particular, clang 12 will reject `.weak memcpy; .global memcpy`
> > > (they had different semantics in GNU as and LLVM integrated assembler
> > > for a long time AND binutils maintainer agreed that .weak and .global
> > > are strange and should not be used - though binutils will not make th=
e
> > > change to cause disruption)
> > >
> > > Please see https://github.com/ClangBuiltLinux/linux/issues/1190
> >
> > It's straightforward for us to fixup; Fangrui has sent patches for
> > x86, perf, and 64b arm already which have been accepted.  I forget
> > though what is the convention for "Fixes:" tags for patches in -next?
> > The SHAs change when pulled, right?
>=20
> No, only when rebasing. It depends on the maintainer how likely that
> is to happen for changes that are in -next, but usually the commit IDs
> are stable once pulled into -next.

With a small exception of mm tree ;-)

--=20
Sincerely yours,
Mike.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201105102459.GA82077%40linux.ibm.com.
