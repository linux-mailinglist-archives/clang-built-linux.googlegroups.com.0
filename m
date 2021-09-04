Return-Path: <clang-built-linux+bncBDUL3A5FYIHBBTGPZSEQMGQEYY5VCTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 494D9400A57
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Sep 2021 10:01:17 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id s9-20020a17090aa10900b001797c5272b4sf982614pjp.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Sep 2021 01:01:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630742476; cv=pass;
        d=google.com; s=arc-20160816;
        b=sT35zNJPJVwtxAEanYy+P+pC6xOFh3NT/gITPUR+kIUx5IQaZOs4Rr0+lsGx8Zjx8b
         t2GvCdCHK2MpB9Ld/Qdee6Mlg2jHGBJaxt3ELdldBlJOJr33KIsGE3/EeQJki3KllkI2
         X/rnANNF2i5mfsiITTxbPdMzPtqtaYgmxPzPGaI7ZiXlbzcHHuMBHRkgzLrnph0vXSX5
         BtnGX9rAZq5xbtfxSFabyv3YD3e/AYLj/pdoei5IHpl9hfsew5TmwESg3ghRLeeBhPLm
         5SjTHzmmUdD7G0Y1LIZ5LDyUXi03/vqbpG+s9TFTuM43q8Gdp4xm80nHRGXPu2nQgmHT
         0K3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:sender:dkim-signature;
        bh=I0nNVFFjEY9tbkyTSRXY7WT6WHJgOKjSnI0zcKqkUeM=;
        b=aGm8kjTt7ydG9CiRnwPUWZuKH5xM89Dm8+nm4XqUDo97TuN3bitE9kQD8Qekg38Rwt
         PCOyUBsV5zWU/R1cUURd6YaLLhgLYP+tWWds54hSxrTAhlC8/LgBLbkSoZ/fcO08sfoh
         aAKyXJbt7s+WZfxwAw/QpcrDgA6anuqmDMcpBHmyMjBQepsWTc5W6b0aDzZZUf0s2osd
         i7gL9f3/2D3/HMZ2siJ5iM4Hvd+kCIOY9S5PkAwjI/GLktJn4n5p3CBk44f3sQ+3O37c
         urPGOaMquwMh0BDNtZLFyBi3DVv9hsS5ySAheyWzsQsv4/GsBFQ8g4KPayiv94bw9Az7
         WBig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VZ+3n8nV;
       spf=pass (google.com: domain of fweimer@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=fweimer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I0nNVFFjEY9tbkyTSRXY7WT6WHJgOKjSnI0zcKqkUeM=;
        b=Y4+bkX3ayvbcGB/U5iviq/Tbh1qVlRD5V+3QwQ+zg0O6VsMaZsab/Jolx+rkZ4Z8xd
         4x1YR78dVsHSe8R/qs6wilItofwiUSVVE8HKjkl4//oM1PbBRQ5vv0QkBG0+w+xvJHja
         nVqjXwH0DUG8DH1XW+x8oxdhCczF4VQXipXXXUDRxs5pZtO8bdbNSKNAznaYT0PAEylU
         Q94SX/yLysfo9iBOos6KuNq8uiKm+F5hJYYc/ejKVgHWyRBtjo4+kgYTyCkYFWGcdG2q
         s/BpBKltIwi7mBkusO2brDb8OoI7nCS814Yb9yLm5A1XiFAUOlC65Bpa8AWtW8vcHsgd
         EgWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I0nNVFFjEY9tbkyTSRXY7WT6WHJgOKjSnI0zcKqkUeM=;
        b=ITpIuXgMvnr5otflMrEdtUQXMvdyZm48R/GkTvQTx6kH/4INZssu3DyD72o3OWyzCn
         7OTBJCrPvSLvzg4Y5R/nizoGRXGx9Pmex4cMBsbTmVbmVWU+ScFePruAx+VObRlRp1JH
         GLbUbqvnIp/q9nVJvIjJ4/2TIJRiTGpcwb2ILcUQpxCGPXZeRGgWetPB+B/spC5uCyEM
         P5wqMqITuCPxWgnzjlqTyByZD8OoUqglanqqe+JLQppYyRIKve6RGUFBUWWPaYfQB4e3
         EPhYps0XpmWvbj4yNTXXQcMpirIzklwwCmKcWak+2XnQemfvuM5lXvibqA5reP8W2vlB
         Utnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cXUn2EOUVxHn1uvl4t2ZVwAclQWObSeuRl69t9IQPEMC8E4C2
	zjw9QzPtfrV7j8zFVQkSim4=
X-Google-Smtp-Source: ABdhPJzVIhxnlKDiegRNr1Bihnxh43M6SS9bgZsYq1gFQrE/jbKuLTItBO32+8s9/ntkjAMG7GO7eg==
X-Received: by 2002:a63:5c2:: with SMTP id 185mr2645279pgf.220.1630742476217;
        Sat, 04 Sep 2021 01:01:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6487:: with SMTP id e7ls680959pgv.7.gmail; Sat, 04 Sep
 2021 01:01:15 -0700 (PDT)
X-Received: by 2002:a63:5013:: with SMTP id e19mr2666848pgb.63.1630742475662;
        Sat, 04 Sep 2021 01:01:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630742475; cv=none;
        d=google.com; s=arc-20160816;
        b=BQ8H5nQnnPJkVS3OivBOrWBmXmPhbGu1pz0G1sJAfeyL93auguZOyFDuRHh5mEQmd0
         dr3JhaogFrBNM8uLoFiWu8joxOnnT1KaDxWMkwR0FioF/QN3ic6aW2yfbWIFboSerwyc
         R3MOJpuS64tXxH2A5CDjzOqrfy8/z+MPUhEA6fe7jZkJ+ArRj6mzffSX8Dx2uLzap4Kx
         cfu1WFME2E0uiaMn3pHBxOLLHIrVU3SBA5KE5TzzWH6bAaY6wTnzK9VrjWi25xopnIgH
         iXzutJVsKZwUBkWvCXkafY7qAIck86GqdPDjv5QNAkS5c2RH6dyZObIcFG1uAf9AgNA3
         tX7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dkim-signature;
        bh=dbDmMaToSJQ6dPIHh+SXBa8mY/4mUayITASUyPnbVTQ=;
        b=vljOG9uUZeV2aIb86Rb8jQTPCBjfrjonWzA8TZAOeinXFeVwLyzjdh5a/KF9SB5t8d
         mNXXO26Hw7jJEJXlpaL/ZkqMZCEtz5sstvyQQBXorixBTKG9QwF2C2U8GIo+FIpRTC/P
         FOfVh/4THmx9imscABYpu2/pXuh3lUd1tYqUmnX3lngoIEP0xFMgaivP1wSUQHucdGiT
         H1dbCysCx8uCXGBgrmrTU4emj32nPPI42Y7nrTMkpEU73KiKZ8QXvKSCwXjUbQSDqeIv
         zw7rYiDgB9uCW3nT+GkQwLpPCzhtpUVEHTqdYBiExJDk7e0CYZzpYayvxAkJgK9VSB2F
         t1kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VZ+3n8nV;
       spf=pass (google.com: domain of fweimer@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=fweimer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id o2si99443pjj.1.2021.09.04.01.01.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Sep 2021 01:01:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of fweimer@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-467-NdC7YETuM32Sga8gJDFeqQ-1; Sat, 04 Sep 2021 04:01:13 -0400
X-MC-Unique: NdC7YETuM32Sga8gJDFeqQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E270B10054F6;
	Sat,  4 Sep 2021 08:01:11 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.194.140])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F9815D6A1;
	Sat,  4 Sep 2021 08:01:09 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Linus Torvalds <torvalds@linuxfoundation.org>,  Masahiro Yamada
 <masahiroy@kernel.org>,  Nick Desaulniers <ndesaulniers@google.com>,
  Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,  Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>,  clang-built-linux
 <clang-built-linux@googlegroups.com>,  llvm@lists.linux.dev,
  linux-toolchains@vger.kernel.org
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
References: <CAK7LNAQ0Q6CdXaD-dVGj_e3O3JYs_crpejWKpXHYQJYxyk-1VQ@mail.gmail.com>
	<CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com>
	<3b461878-a4a0-2f84-e177-9daf8fe285e7@kernel.org>
Date: Sat, 04 Sep 2021 10:01:07 +0200
In-Reply-To: <3b461878-a4a0-2f84-e177-9daf8fe285e7@kernel.org> (Nathan
	Chancellor's message of "Fri, 3 Sep 2021 16:04:50 -0700")
Message-ID: <878s0c4vng.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: fweimer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=VZ+3n8nV;
       spf=pass (google.com: domain of fweimer@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=fweimer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

* Nathan Chancellor:

> We set up the linux-toolchains mailing list after Plumbers 2020 to
> have a common place that kernel developers can bring issues and
> discussion to both clang and GCC folks. I am not sure who exactly from
> the GCC world is subscribed but I have added it now to see.

Someone said that they =E2=80=9Cagree with the reasoning=E2=80=9D, but the =
original
patch does not provide one.  It looks like it's about preventing the use
of compiler-supplied header files, but even that doesn't really answer
the question: why?

Especially since some parts of the kernel actually need some of those
header files.

Thanks,
Florian

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/878s0c4vng.fsf%40oldenburg.str.redhat.com.
