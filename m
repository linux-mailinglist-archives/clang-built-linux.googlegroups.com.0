Return-Path: <clang-built-linux+bncBC55V4M54EJBBJUUZ3WAKGQEYZLGX3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2F3C3E63
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 19:17:27 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id n4sf18272036qtp.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 10:17:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569950246; cv=pass;
        d=google.com; s=arc-20160816;
        b=y+Eg0V2nEDCRNbHVBwxPr9nwjejdIdsvIG4h/ft8aTUk2qTNA4mP7nABoezGz8798v
         HbP5Zj4Li9s0IS3NQt2kjJVmGCcS26OsI26UkrBVQ+iEh2ynutuKEdfboOMxu9294RCV
         vYFeXeVGg+Rfr3227HNhYPsQoXRTFYraijW74gpE/BKmHqHafh2/RHhTSCuTFvyH1nB5
         VbxeVoJc9qHN6E14SZ1jEG0ivYelZDM8AOAHl8GO5Jvhcf2fAF4OOu5ioPII+Aa4DmO7
         ELbXtEPO4ObQOTW/43x9kb2TlEZfPm80ADVnmII64cZZr6I7vfJgVfS3DSIehZNj5PYt
         hmhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=EfYeODwSwHooEQ8S6HCPE2CL0EjYCqmwil76tyQdIrc=;
        b=tx4lN1pfz5DmYqjuq58//ddJQKJyqYP1jcGquIjMZdhup00Dc+clAW/aSj7PbAxQtk
         udaRPceLmLC9jyEbcmvr3CXlSCqmpxQohtVnPYBdqhs6/a8hIM41UZgoZ7kR/xIcBu/j
         UsVN6O6O3xDc50wYC5b8NDx7HVddIch3iU4BR8sAfhXvgJVydp8HfOs+nzpz65AKdFj9
         kfhlENyW6Mg8EKM/sb3HPntAY59zgqp1nmd4DFeLYCRQSdEZEEayvEaDWtAZtZ5x0VY6
         q65iHhnBIXE4UYqQ1hTxTLlAjXpMzLzOsTpPIMon4mc+6vrZ9+KOectTIOeFlqgGw0va
         Lgag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 195.154.220.89 is neither permitted nor denied by best guess record for domain of sylvestre@debian.org) smtp.mailfrom=sylvestre@debian.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EfYeODwSwHooEQ8S6HCPE2CL0EjYCqmwil76tyQdIrc=;
        b=VvRdEcESH6S6KtykbYSYA5dS5M/CYkcOGm4vVVYM8Xy2y5X6licSwfjO4mGbVztufL
         MSPIbB6JFwL/nGCi9V580EqRENY9EvlqKJk2/3KcFzErJArgSc+YzCgvqUzhcjKwR7bD
         vlVVpOWuduAQuUm9SaLoNCjYnOuftI4aSbVKhTVWCQOgjJaXvOSgQ/4QGIFUb3iwOq5m
         OspcDWwYJaDleZz+22/5xFK8irJpakrHnk6vs/Yb0O3zPmubnOhQxhP9hygHLDR+Q/uz
         bf7w0yWU7RtaLdLs8LNBtxbjTMH+vtk8UiCPuFsv0FRjuGUFRLwJhwUtjdK9KWvNPoL/
         ydMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EfYeODwSwHooEQ8S6HCPE2CL0EjYCqmwil76tyQdIrc=;
        b=jcVsZx9LvjvDxjWQsH68D9OtgGXu6hLUd8sjazaKgtrU34/Z6OByNYTLC5JklFYSOw
         6IyY+xg1FUjUtWwVldWYIPea8cNnO2eDGo7595KqJaMZRZs+i0eOra5XCnIH4v1oocad
         AyxsihSA2xysMQu8FUFIcJ3RsxC4FT2dGzffEOrWoY+FW55e60sygxP0KoI1hNp3Ygai
         z6RCCxXlnLt8mKNax7D04fTgC/ft7NbW7E8K8Pn8H/z9/XejIENLt7C10MmhgTGeVtXO
         4JcXAHEcohXtoV7+UxTA0ehg8dY1wKhT7AAXLcI03AvTPNpbkjO3D90apgyym8Y8GEub
         qVZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXe0mTXLOZSRj9SDqmLeMdS4Vpd2H4wQfQfZVxui8/D3hoh87n0
	Jy7bJbHV3nQRIz8kK3aSCkw=
X-Google-Smtp-Source: APXvYqzxJvGnNbLCRPHuGFPwCIkjXxU6vMhOzhV4fDNO2X6UNyb9UCKQ6MTFL4+/DGMU7Md9bNu+kw==
X-Received: by 2002:ac8:6b56:: with SMTP id x22mr4083092qts.225.1569950246213;
        Tue, 01 Oct 2019 10:17:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3809:: with SMTP id q9ls5510320qtb.5.gmail; Tue, 01 Oct
 2019 10:17:26 -0700 (PDT)
X-Received: by 2002:ac8:670c:: with SMTP id e12mr31406430qtp.169.1569950246061;
        Tue, 01 Oct 2019 10:17:26 -0700 (PDT)
Received: by 2002:a05:620a:546:0:0:0:0 with SMTP id o6msqko;
        Tue, 1 Oct 2019 06:21:43 -0700 (PDT)
X-Received: by 2002:a5d:494d:: with SMTP id r13mr14781366wrs.166.1569936102493;
        Tue, 01 Oct 2019 06:21:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569936102; cv=none;
        d=google.com; s=arc-20160816;
        b=cquesK4h4je4/oL8PadAhrKRtcv+2QxaJN2v7qJwwLEe6eyX3EWJjRwExyK844YSn9
         psjiPZ9ZiDboutpuh9CSij/O4ramO+0bEoDtO+aHY45/sw7oDGWFirjSZ1MlLO4FW54B
         v2sH15uHMh3abneVpOwtkzXzbWNXnX3f7ivHxKbT0qHfFTYSu+De9CustFJY1+NGNoc9
         xysEq4aybbNyA0VGVso835Zea8NTTcptgI7uBhM0bRXC8NG94MrDWDKOfMSvxjPKfbJn
         42+il1yMUPAzp2b0qDuFoShCy/VdXvLOsOCUIG7tlqN5/NNLkGncE37EAZGQCUNh71c4
         cwxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=i1z11YQldSeqtl2Kd//u4hwPwT2/CqRUltVt2Svs74I=;
        b=IXx40EFLIExWJdsqwIfS1qacV9qbQxtFKL3Pj4rXvSE0gJiLCGJi/ypCwzi5RWfCfc
         ysTIFVTQ7bLjw7SSLeVkolWzNiWGi9HlT95ZazqzGkvhDJs7E2WHkXwwCvaXiBk9cyXn
         8LGmf62NOBY+bfO61FqsCLtsrbeZdxjrEP9nGXjG6j3ChwmsahFrlKVOM5ITXU8NX0he
         u1RubyzayBUMMcX+RPeN3u46KYGyepuVCzgBtJx77mUB6PE8Hl3rvrCcTlfDQt93NfVG
         tyfZDeDOaT1Bzejhe/PQ7+cM0xf4APN48iNqGSypM4X3ckRwJZ9gM6G+FMSX9CVVBh5m
         5Ckg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 195.154.220.89 is neither permitted nor denied by best guess record for domain of sylvestre@debian.org) smtp.mailfrom=sylvestre@debian.org
Received: from batou.ecranbleu.org (batou.ecranbleu.org. [195.154.220.89])
        by gmr-mx.google.com with ESMTP id j4si715938wro.5.2019.10.01.06.21.42
        for <clang-built-linux@googlegroups.com>;
        Tue, 01 Oct 2019 06:21:42 -0700 (PDT)
Received-SPF: neutral (google.com: 195.154.220.89 is neither permitted nor denied by best guess record for domain of sylvestre@debian.org) client-ip=195.154.220.89;
Received: by batou.ecranbleu.org (Postfix, from userid 999)
	id 6079912553F; Tue,  1 Oct 2019 15:21:42 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on batou.ecranbleu.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.235.30.201] (corp-nat.untrust.par2.mozilla.com [185.155.183.198])
	(Authenticated sender: sylvestredeb@ledru.info)
	by batou.ecranbleu.org (Postfix) with ESMTPSA id 6349E121794;
	Tue,  1 Oct 2019 15:21:39 +0200 (CEST)
Subject: Re: llvm-toolchain-buster-9: LLVM/Clang/LLD/etc. 9.0.0 final
To: sedat.dilek@gmail.com
Cc: Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <CA+icZUVQqOie6Q-r1wHXkNsRASYqzTAdGqrkhfYsA5Ryh2WT0g@mail.gmail.com>
 <19f1998d-a8b4-41b0-b86c-559c694f0c06@debian.org>
 <CA+icZUWWEQQuG9fqGq-06WGciktgGeOgpZA9iVDHxw9ut58Y4g@mail.gmail.com>
From: Sylvestre Ledru <sylvestre@debian.org>
Message-ID: <6c1385e7-946b-6c73-b9b5-17df22069b42@debian.org>
Date: Tue, 1 Oct 2019 15:21:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:69.0) Gecko/20100101
 Thunderbird/69.0
MIME-Version: 1.0
In-Reply-To: <CA+icZUWWEQQuG9fqGq-06WGciktgGeOgpZA9iVDHxw9ut58Y4g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sylvestre@debian.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 195.154.220.89 is neither permitted nor denied by best guess
 record for domain of sylvestre@debian.org) smtp.mailfrom=sylvestre@debian.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Le 01/10/2019 =C3=A0 12:38, Sedat Dilek a =C3=A9crit=C2=A0:
> On Thu, Sep 26, 2019 at 3:04 PM Sylvestre Ledru <sylvestre@debian.org> wr=
ote:
>>
> For me personally: If I can choose I prefer to use the final release vers=
ion.
> Technically it does not matter.
As we (llvm) are pretty conservative this branches, I am not too worried bu=
t I understand your point.
However, if I start to tag version, I think I would need to create separate=
 repositories for each version.
Not sure it would scale :/

Do you have an idea how to do that properly?
Cheers
S

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/6c1385e7-946b-6c73-b9b5-17df22069b42%40debian.org.
