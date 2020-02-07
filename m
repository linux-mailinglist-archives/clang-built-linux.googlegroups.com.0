Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRUN6TYQKGQE42LT77Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id E941315527F
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Feb 2020 07:42:15 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id bg1sf773729plb.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Feb 2020 22:42:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581057734; cv=pass;
        d=google.com; s=arc-20160816;
        b=AllMECQrnfcQTyAq+Vb09NOKAXJYSEF9882ZjNG9MzsN8OzywV8Ldg59Xq2SVdLqgY
         Ul4uklLS98VVJmu/OTnt1OObLlq+RluRsqJ7Mzl7ogC7Iu4FsZC8XGv9FApLj5KOTqpq
         Gefyd4GmmfKNrhOJm/d3M2RwSEnn/sL9hixC8uZ7MLrLUmQnaa4dMg3gTSkmqrmFekw6
         cLJX0K82lER/BxIuVC0CDglzwAO6UVzV4T2ydg/Gj1/TQorX3vtVHFDRYp3275AagAnZ
         PvwOHPNztm0sR24Jm6yM90i4ecCRbWU5fZpX5q9Eq+RReSTHxndpDwhoI3it4ILkZEuv
         s7sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=sOuJ3mUEjy2Ox6EBPcIkROw3HzADN6svI+nTyM5oloc=;
        b=iqx/AYVEmskdsDzLQFtzJRdNQaBefaLfOG+7W+FbhyCKPJ/hyPrGRgZfCOvjBbVBem
         CDpHMvRUNEJJJEm9AKpE3p6KnW5+KUX4WFlG2ip5X61G6S6oSWr7YlxPxHF+DGPCTYOu
         or7556Dtce3dzymHQSKYZeK6y2XJQ/Y2sTpekmENXLhEqqnUu5OcrwK3X1RRxHig6eqT
         9672hWORAD1HjfP2EU2LoYJiQCMscXQXRP8TNnXzn1VIK3MY0kz6/eNxGOJZEdK7KSqm
         CAQbcBxyAPepPPicmzxqglFyIGKsJnD27enrTwf5ig4CHD7IJzCvQ+PZvHKDxCoQT7KC
         T7Bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vs8xRFTr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sOuJ3mUEjy2Ox6EBPcIkROw3HzADN6svI+nTyM5oloc=;
        b=BNKrXAMD+61PB/dvlkPiMzU0ej7txZAp81GNdEKjhKsI1xZxRfB713waRcUsYhbVll
         Lcy2SzD6AM5VKb3L5JYQWCMHLujJ2fxNbVUQWGrZcqRJV6ABBp7/gNsfrwm7S4M2cNBa
         AjnZoxNjAH6dTxD8xtjqQBU4rWyAsXVfDir5GLDfmxYt7QarNDWQFpzqFY0AA5ypLvhN
         iwgSC/VXzO87ArULaQ6Dro/tlwr9kU+VGT7mGcYS9IbuFBntiIWidDIR7XZ8DMNNkAl7
         F9qX2BHLkw81k7mUYxzXrwA5dsOGACVJdwac75ntM4JR96DPwjTvuc1nl4P+chD4akm5
         IfCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sOuJ3mUEjy2Ox6EBPcIkROw3HzADN6svI+nTyM5oloc=;
        b=vb2AdzRlwFfyupxD6p0oj43T/goz6orXbz+NfFWgKm9GoLRLzpXfE6LyzLc5t6vQIL
         tw/h8yyMXlbCqI+QCFVLqOqIDLWSwFCWxsTqM0CqniSnywmLNxp2+t9HNow5t6aEm8JG
         NfJEvzPrHgv8J8tOyQsJ/10nPxTTAWiuG1QSFmFRktFnpbxCVEP6CQEsl9JN1CMZbipM
         OiOv/S4K9VIcZqrtU0lbcRvHCLgRcgp02VvDys6tZHZBDKZ1memdsYaMNBjJLLh/HZdy
         QWv2EVKLXgMIvG8/RJfuDvRatrJaSucJeTIec7o4A9i411TRpIpjrIaWcOe8Rucp1CMR
         3mIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sOuJ3mUEjy2Ox6EBPcIkROw3HzADN6svI+nTyM5oloc=;
        b=dMOYfkeYUoy127Efb0guI2Yqm6h+0soalyjceMx1+lIQL+wFo/G6FMnGNAq2qH5vXJ
         AX+jgxgkp+sUQ9oFBymxauvtJj+Oqt0NZgRH8sgX3qjEdYbBaAtD10dzGTVQMgLROR6d
         VyPMsqaEHZT4wvrhFpQaegG64Yok3A67/b4R9CleP5KexktDjYukt3Ib8Zl/img9pV1h
         O0GEYNQgQspWtmA3v1TlgAjEcFx27k2uegd5rMZ2y+H59pkI6nXa4uCCesfaJ+DuarxH
         ao8ugrjt+S2QouJPEcJOluvF01B79NFpnjOjNV/U7XmFQUkTI0YXIU1Z8mXi4i96bU5g
         8glw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVp9PcFp0p3WqgECFIFtM60STIvKOR6kZHAQZcqXFdhVg8xUQA7
	WkrQsZvuiL3u9MzXUNLQ4e4=
X-Google-Smtp-Source: APXvYqzxvJv0p5IR0kXxsH7QFr79dA6ePyszdYSWdEoCqZGtScuScRwGk0Snyg2Sy3zNqk8Li3O0Iw==
X-Received: by 2002:a63:610a:: with SMTP id v10mr8115520pgb.211.1581057734165;
        Thu, 06 Feb 2020 22:42:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3ae2:: with SMTP id b89ls4808849pjc.2.canary-gmail;
 Thu, 06 Feb 2020 22:42:13 -0800 (PST)
X-Received: by 2002:a17:90a:ba91:: with SMTP id t17mr2161777pjr.74.1581057733657;
        Thu, 06 Feb 2020 22:42:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581057733; cv=none;
        d=google.com; s=arc-20160816;
        b=l4eJy2K1rCvDySWawWU5Y6bJKQB+mVDZno3dNOp44sQ3zosRuX23ncMrmBbVn80vHN
         nlN//OKRc/+PIJBbFWQ5zy8ej1A5iAaC77paLJIqeGlDMkuiiOuJlWfjlL20JGRs6+8v
         5KZvL+yTkyQTzWsBPRFkzQxVG+D5g/Fs+HAmGH3YYT2aasL0k+j7N0SoMeUafOEZKQJh
         JCnVIQeWRoethqAHD+w7a3bghNx0wXNV+pS7aQfcDCmhXOW07ZNdO3l2M1TvtHUFSLyc
         tOvLc6T8mCI2kehabG7xaf8UfguHTuLWLdgw9RiRZ/loU3xk63/MVmOwMMdL1NdrNU4P
         Rx4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=nS5JPWneySiodQp4hbvudj9hL13ty2+PLssqsVAS96w=;
        b=RZsfrVlCOXjWKC9u6A0rSSnNHJRePl6y3YfdknM4jsXVWDqzqRMoYkuD5phga2tkzP
         yIC/vzqYFXswWxYle53NIsWSAohjT6+B3EdIcMYLGU1iEiZRZL1xs49yKQleCXxnTYfs
         NbEvaRKzDc2vlUjoXogXX1pANiKGuWda4zl+TTbP/u3Lm+9Od+YPuXzbXH3vbM2Cy/i4
         2TEV7e5KBtlJLL38klrzblR4s+aUeiqaoOg4ac88eoK0Q1Lnu2a4WFRGRrsNOSm2gBIB
         aJP3C72NQNrYEKxcEIxh83X4+ix9gjPoOFZV/o7SqAB44XjkMPbkxzJS1LYKjXtRKmP0
         d4ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vs8xRFTr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id a4si569533pje.1.2020.02.06.22.42.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2020 22:42:13 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id 66so1120257otd.9
        for <clang-built-linux@googlegroups.com>; Thu, 06 Feb 2020 22:42:13 -0800 (PST)
X-Received: by 2002:a05:6830:12c3:: with SMTP id a3mr1569040otq.341.1581057732875;
        Thu, 06 Feb 2020 22:42:12 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id z21sm777102oto.52.2020.02.06.22.42.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 06 Feb 2020 22:42:12 -0800 (PST)
Date: Thu, 6 Feb 2020 23:42:10 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Cc: Fangrui Song <maskray@google.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] powerpc/vdso32: mark __kernel_datapage_offset as
 STV_PROTECTED
Message-ID: <20200207064210.GA13125@ubuntu-x2-xlarge-x86>
References: <20200205005054.k72fuikf6rwrgfe4@google.com>
 <10e3d362-ec29-3816-88ff-8415d5c78e3b@c-s.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <10e3d362-ec29-3816-88ff-8415d5c78e3b@c-s.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Vs8xRFTr;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Feb 05, 2020 at 07:25:59AM +0100, Christophe Leroy wrote:
>=20
>=20
> Le 05/02/2020 =C3=A0 01:50, Fangrui Song a =C3=A9crit=C2=A0:
> > A PC-relative relocation (R_PPC_REL16_LO in this case) referencing a
> > preemptible symbol in a -shared link is not allowed.  GNU ld's powerpc
> > port is permissive and allows it [1], but lld will report an error afte=
r
> > https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git/commi=
t/?id=3Dec0895f08f99515194e9fcfe1338becf6f759d38
>=20
> Note that there is a series whose first two patches aim at dropping
> __kernel_datapage_offset . See
> https://patchwork.ozlabs.org/project/linuxppc-dev/list/?series=3D156045 a=
nd
> especially patches https://patchwork.ozlabs.org/patch/1231467/ and
> https://patchwork.ozlabs.org/patch/1231461/
>=20
> Those patches can be applied independentely of the rest.
>=20
> Christophe

If that is the case, it would be nice if those could be fast tracked to
5.6 because as it stands now, all PowerPC builds that were working with
ld.lld are now broken. Either that or take this patch and rebase that
series on this one.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200207064210.GA13125%40ubuntu-x2-xlarge-x86.
