Return-Path: <clang-built-linux+bncBAABBX4Q6HZQKGQESMNYLQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2D8193868
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 07:14:56 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id o18sf3698194otl.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 23:14:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585203295; cv=pass;
        d=google.com; s=arc-20160816;
        b=RqFd6mgXi2Z2vWuabZPSAwAL13OJXP3TPXlLmDl7rL7K6yHt1pXy+QaoGSUmqr0qwJ
         IT/NTtNfCoFzJYrdtDgflgPMBdRSDQD9MQgziDuQyUalutHyIqKW7kuYEVdwndBkmhhT
         hBqKK7lPW5PzOJIP48AOQtbIefZGXXfwZWSq5mf+APqGKWNDFL5gPuhST8Et6D9NUUV5
         uUKK0I+tXi/mQmpXsZWxEBA5KK0rG9K9x1UpNIwq6kcn5uYTHCzc0Enjj6cAzhR0uEce
         A1qYbRwtbgJFNfINDD7xL+tNW7fQSQgpEYpjbGiOWn9ND5qyxi4tC2B5ZJWujU+3s4qE
         aM6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=iKNfK9HEMDTLRObiL1vaxPgoy1sxloXdK019JZwJmwQ=;
        b=IqIJJWP+VPE+JHHBVDAqAHvSwkruHbHTCQC8CVmenSbG4Tk+ytgQpBvRipACFrzGwN
         0jmFSsifny0D2Ps/sCvpl9Vr/Ux+nVv2Yc6JfRwxPuZc3mN4ncJJLxO9aZL+B6CDUMCa
         USZZhz2yat6vsu8t3czjBJTwu2FtoYxglMvacwEGe/kQ/TxfAwmlHuWPDIWXIz4tCiOz
         06pFvyeneHyepNabk7OGGsp+6axzfl0Hu0kFATrjd4n3CbglEP2+781pvKKYtosmIoFI
         +uwSdXDqw0EQVC/Q2/jqViIu/1w91BTXiT3Ecz0qFg+kDSf9h6Jup7GKu85hVvnc4fPR
         4Ttg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=De9gZQ+3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iKNfK9HEMDTLRObiL1vaxPgoy1sxloXdK019JZwJmwQ=;
        b=eGKWMhnAMXj2jsAiiwX/GXYNTHtdx1uce/GZFSCi0JozwJKPEXFFRHMymknr6L18CP
         8ORm+pxuYedQiSt0JPRAuNlnYdkambgLaEg93pf8HHkn+0Vqp2yrmS2OGVFfU674BXA/
         Lymt+13ssAvjWtdNgibK48p2FWCjVQqGhpgup4GZMLEjQ/exWf2zyUm96UUijjO9XT0+
         99shhZu+UQrKAMcwLbmTW1PepfIGoKEiR53KDGwdNEhcRTQlrtx+gQJX+eE5Z5kHBvhG
         pRCgxOFcawpdsIEGXS4mmW/907QXIbeBRABOD8Ji6xq00cdwN8yyPShzRUa3LvUMiuv0
         luNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iKNfK9HEMDTLRObiL1vaxPgoy1sxloXdK019JZwJmwQ=;
        b=i0xNW6CFXUhl2SNEIo4fsw/lICgdppan8E+zH0aC//rinslQQpzL2RVrdjdGOVx8aI
         o16izSEDzuR3f2js3tzDvI9YMuDKccKZihO7zTi8feeCQ/G2Sj5NlFasb+CqLkQahGj0
         EZbmDE/11mqt+3pT+CoxpS0PJat0oZ4qlFrsdiGTxMdmcJqBHSuUU4VBZ/st22TDaOHR
         cZ9GCmUg6P/KPuthe9d/lcPjgtEaaeL/O1ZD2gkXH6m11Pkr4PEJzGamZI8saxMRLpxd
         ouXCXlYcH/A7bhTdvrs3zgnM2kqtH2VFsXDnzZZjjkvUbS33x6SF4GqUUK8Ed79jpSKW
         N4PQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0jbsSFDa0Y7Z/a1vLtt7vFjTm1piKTLFdAf1RmpfqO0BE0wQRH
	VKOpzQZ7plmKa5guD+ljwkI=
X-Google-Smtp-Source: ADFU+vstuEATRra/bSGZaO1p5diQdVWNp7xu/+9dzG11XwJoHIaQyzTtHcbdTD7HUWC6L001221nXA==
X-Received: by 2002:aca:c54d:: with SMTP id v74mr775921oif.50.1585203295674;
        Wed, 25 Mar 2020 23:14:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3985:: with SMTP id y5ls1644456otb.7.gmail; Wed, 25 Mar
 2020 23:14:55 -0700 (PDT)
X-Received: by 2002:a9d:3603:: with SMTP id w3mr5253889otb.94.1585203295372;
        Wed, 25 Mar 2020 23:14:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585203295; cv=none;
        d=google.com; s=arc-20160816;
        b=zEsbw0hwtpxcORqcXf7Zk5+Z5xM64pDxSXMUHKhj+iBBIB9Tu6nZG1G6yC1CVvZxUU
         paLVaOa5PXtpaG3vdJF/Nog/P9g3webKXY1iDItwmIFArBswprUkLukgAonolw5Uybdv
         MjLCVfNh2Tr4d0SeOarmNKuUDfL2oKOT0U8YGkxdb0s/gxNe3uN/yxjQHpDqggXb8qbH
         saw/zI3dhYc6hoU0fqedhhpVO6KVn5DEM4TYBnoD/a6zL6EZZWFUQiBdLIl1DGGwpwzz
         TSufZNd0XdX342mc7NspD8rclLbG2xXOjUedrClxgJYtOMgZcyOnagZniOXoHDYte0ip
         E+9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=9JvGFXDbXf0WHwUuU/6/XuO+PW6RcH+NvJKjNlcv4ZM=;
        b=DdbPu/bXDpoPXHI4B1vA3g+dpjF4074AVrKC//di7SKThv0IGTTRPkvNYGLUKNiB+R
         BiSclscixR5fn4P3ru0gbI2LzC03vdSJXLb67F6C3RNggnGGkwoicGpXJs2PyExYNic/
         Y9YalxRPljtyx06GwTKj1tJkVYBepcRDm+wkUWL3tsgG72hakEf52gv14YcXNG5IIp4U
         mTwyiqsBrXy7AbjY8dvPYtdqTSmDiACyfBnzvVPO6moaaZhMtCFelADxGJURGy2vXgF/
         /lbdwMqzSCbS+RpcEMAtz8V9KORJCAhZsY4VR7VVWnrf9we8zRbOLWKvU7KMvlloaeaY
         kiww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=De9gZQ+3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id d16si132730otp.0.2020.03.25.23.14.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 23:14:55 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 02Q6ERkY015432
	for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 15:14:28 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 02Q6ERkY015432
X-Nifty-SrcIP: [209.85.221.176]
Received: by mail-vk1-f176.google.com with SMTP id o124so1398404vkc.4
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 23:14:27 -0700 (PDT)
X-Received: by 2002:a1f:3649:: with SMTP id d70mr3829330vka.12.1585203266653;
 Wed, 25 Mar 2020 23:14:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200324161539.7538-1-masahiroy@kernel.org> <20200324161539.7538-3-masahiroy@kernel.org>
 <CAKwvOdkjiyyt8Ju2j2O4cm1sB34rb_FTgjCRzEiXM6KL4muO_w@mail.gmail.com> <CAKwvOdmWqAUhL5DRg9oQPXzFtogK-0Q-VZ=FWf=Cjm-RJgR4sw@mail.gmail.com>
In-Reply-To: <CAKwvOdmWqAUhL5DRg9oQPXzFtogK-0Q-VZ=FWf=Cjm-RJgR4sw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 26 Mar 2020 15:13:50 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS+3gq-uL6HF=o2NbZ2udkr+dqAhsvs-XxFs0M9wShJbw@mail.gmail.com>
Message-ID: <CAK7LNAS+3gq-uL6HF=o2NbZ2udkr+dqAhsvs-XxFs0M9wShJbw@mail.gmail.com>
Subject: Re: [PATCH 3/3] kbuild: remove AS variable
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        "David S . Miller" <davem@davemloft.net>,
        Network Development <netdev@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=De9gZQ+3;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hi Nick,


On Wed, Mar 25, 2020 at 4:59 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Mar 24, 2020 at 12:38 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> > consistent in this regard (and not using the compiler as the driver),
>
> Ah, the preprocessor; we need to preprocess the .S files, .s files are
> fine (though we have .lds.S files that are not `-x
> assembler-with-cpp`)


Right, there is no '*.s' source file in the kernel tree.

If we want to de-couple $(AS), we must the compilation
before the assemble stage   ( $(CC) -S ), but
doing so does not buy us.

So, $(CC) always works as the front-end
for compiling both .c and .S files.


You can see the internal database by
'make --print-data-base'.

I see the following for  *.S -> *.o rule.

# default
COMPILE.S = $(CC) $(ASFLAGS) $(CPPFLAGS) $(TARGET_MACH) -c


So, using $(CC) is the right thing.


Even if we keep AS, we cannot do like AS=llvm-as
since llvm-as is a different kind of tool
that processes LLVM assembly (.ll) .


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS%2B3gq-uL6HF%3Do2NbZ2udkr%2BdqAhsvs-XxFs0M9wShJbw%40mail.gmail.com.
