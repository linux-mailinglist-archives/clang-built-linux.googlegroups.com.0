Return-Path: <clang-built-linux+bncBD4LX4523YGBBPETVL5QKGQEVKIOBBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BB4274D60
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 01:33:18 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id ic18sf3258578pjb.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 16:33:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600817596; cv=pass;
        d=google.com; s=arc-20160816;
        b=EhzXNXxcS8792hp+x3K+jq3IINaVLwPUd503hqEYbcLtJ1OPOvK0r1NrXEJl8Sc2kZ
         qM3gh76cC0zoBc1t5DjI217wpxhNNwu7JCDc5NNvoGoq/dUN+/gVdUWASYSyQLa1471N
         xroi8hc1Knq+oFEpF228BX6OXTG7WtLrzOdAfKLoxlxH2dNwABMEg0osQrbT85CcdusM
         3QO/6XrZOzlSacfUbsIK9p5ay0ZNcAiigREMjypqf6EWGOczxR4p1/WxH4XxRM3+eBtF
         DGCYj5ZvEL99PF2Xb6StjXShb+bWhnbv8XpbSMLzYSU6v0wcVZTVEfTGWytmvh7D9eaM
         z9+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=p7CLWZyVv+JSTyQTKRs2E5CPCkFoopyspcAPnG/wols=;
        b=RSxrPo/a+qyOYxGM4pVlg+gdpLpuQepIr/z3dIJYo3cJNJFwN7iUlcL3PwJn+LzXh4
         9QNZ842nql/71ciLVrANqB/lUuNlFXcHXYEhJ7BQBHb6ysA/Lv1S0/VWqZ7qoLj8CjuX
         CSB0MVavsyy0xWNHXqqkqgaRoNwGOcgN3NuhCVuDTDvL3LopfdDf4hoPsaHy+R6+L1mI
         2RC37L74aKEBILZjAIfKBUKS6kUo+8h7QPUy1PVErXvqmJkpwTCMI5t+0QYP96oJydKm
         vUpBzEULLu7bPqmsDNB87N3sKDzsJDT2DrQah/mv0TlgPGl4PCwf7MGKJ4Tj0Y8h2tZK
         jpfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p7CLWZyVv+JSTyQTKRs2E5CPCkFoopyspcAPnG/wols=;
        b=WNH0hn3Xikeck/SGfBLDW3PsAPa37FIqyd4Ch5g0YBspGuY5WaG5nQ4mrkfNqVGG4W
         OcjpjD25oN1C3jk2GRvI6pevzyVEPAnyzP3Kt/7nrpCLEy7Zft5eLfGWOPqn5THSLAHr
         u+5DOF1tXfM7JZxCSh6fPFd2g+exYRUkillRIvPQ5uuMnO0J4Jt/iwXnJ7R98XdNav+C
         7fpccGsd3Tw1kiV1WZZz2T2dd9FoK5+P3BC8A7TzC9qLi5tnOQborNFMcpi4PcbvyCot
         xOpHjGg1Nt7sXVrqMI9/i0aJoZMhdsp1lyqlEOnj2LUmYShqGTLdraXjQANYOVOUFN/E
         +R8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p7CLWZyVv+JSTyQTKRs2E5CPCkFoopyspcAPnG/wols=;
        b=KmRTLNc72sSE3KBnNqp7kSX4viYw/yhLA5LTqhnBTNf3dfqcTAUX6eSxMwdSjOz6Q6
         j5LYHOCJukpQY19n1jcUmISF2clZg9f/Uqn107YdVqjvocIszV7JWXdmMxgWqayaKcKY
         FWa6z4fTDL2uoZobzxxzQuZXjrNm36DKd0vqOKyiFwKn0fGUwcgT+X5CUheAHzpVB8KR
         MVMHBICl5fy7ZNuIvAFFeYrnqsuIyNp/jt5Q15djifo+eYc1sXISD3VnmLBpA5TvWUdj
         tUdUpqz0LVyAlk0l2NtWlPKVOA3BG8c3PoUyHh7SR+Seg0z67mABw61ze6iV2T/XXiP/
         qBsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/wWmwz9PIceZ4tHsyvnDuEUQo2BcfQ9C2xv8VgxGzI2hVqhdA
	/BfBvLKhkOooZ3t+tt2qSTI=
X-Google-Smtp-Source: ABdhPJzeTBLcT8DHXnAIk+Wb8KKFGcWMfOrKXg08i4d6r2P5WJeE/nSoINrCSQT88chMl8j6n4YXnQ==
X-Received: by 2002:a17:902:a582:b029:d1:cbfc:608f with SMTP id az2-20020a170902a582b02900d1cbfc608fmr6840017plb.37.1600817596714;
        Tue, 22 Sep 2020 16:33:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:774a:: with SMTP id s71ls6261368pfc.11.gmail; Tue, 22
 Sep 2020 16:33:16 -0700 (PDT)
X-Received: by 2002:aa7:9602:0:b029:142:2501:39df with SMTP id q2-20020aa796020000b0290142250139dfmr6163549pfg.46.1600817596035;
        Tue, 22 Sep 2020 16:33:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600817596; cv=none;
        d=google.com; s=arc-20160816;
        b=zO7XV8p9WwZvS5Ck6hfuupyq8xzCK5uPgX6HDiNYv/m8N4nL4v+ENVrvB2wP2ci6ag
         LWKu9x4bbbGLJhOggdYCKNK1nROAlEoMrebjwIuxhyCmno94nt+x3HUCNgVxDDZF0ZnX
         So/qUcbO75y+dgKHnPaAzVNfTcW7Td/uprzdGWCykofP8zPawRa51UExnysxJeBmsbxg
         eu9AzrRa2pdqHP8gEWXzc0UptG1lHPdRxDc2z4sdVy4wG3aRUvShKaJKg2uTkl4IIh3W
         4xiKcBLVE6YAUi5MntP2mO3TB+/PyQd3Sr1iNyoC3dvFmwHr578F1tPsVvxpKzNfi2HP
         kdFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=2094oulZQZtU6idI7txL0TLmAvq570DArYCPKIJ2y/Y=;
        b=Xqa1vEzKq+sZxKlehFpTuXWBAEvNJ7G924OobyCLkkym9JCMYMhvZTRRl8fkDU+qTR
         cl8t9l5QU7p1F6D6UnJA2kgl4gVa4nA5ixQnVUBTBRVmw4eo1QG87ZIsHQT/X8GQlRcz
         TnnnDO3KbUExoiM47X/ITfykoRLk6v6DMmFHwa2baMUV3DdQ6J9Op2XxyPHY2FnUGAmH
         A8P3fLKkb3/mcaZkVL8/Hh/pTOib+3wAuO/Z25xa8/l+ZqagUVI74pBlBXa8axw80Zdj
         kO18BdREsJ4swgFsC55FHtZ3Jb4fnjjywnwPxOYn15soPFqyrvfYqfThlAvPaz0J8hVv
         Ikvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id n8si1009796pfd.4.2020.09.22.16.33.14
        for <clang-built-linux@googlegroups.com>;
        Tue, 22 Sep 2020 16:33:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 08MNTw4A012174;
	Tue, 22 Sep 2020 18:29:58 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 08MNTuu4012173;
	Tue, 22 Sep 2020 18:29:56 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 22 Sep 2020 18:29:56 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        kernel test robot <lkp@intel.com>,
        Michael Ellerman <mpe@ellerman.id.au>, kbuild-all@lists.01.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Ulrich Weigand <Ulrich.Weigand@de.ibm.com>
Subject: Re: [linux-next:master 7032/8629] arch/powerpc/kernel/vdso32/gettimeofday.S:40: Error: syntax error; found `@', expected `,'
Message-ID: <20200922232956.GO28786@gate.crashing.org>
References: <202009180302.cc60Lfbg%lkp@intel.com> <79256845-c7d4-94df-adee-9cd833fbca03@csgroup.eu> <20200922163519.GL28786@gate.crashing.org> <CAKwvOdmhW_T-J98tQRoMCAgY6uPnW=bujtpDw5KauMnHDE4n=A@mail.gmail.com> <20200922215325.GM28786@gate.crashing.org> <CAFP8O3LaxHqpeUu-iifJMC=YkYmNXSUyxCbRnSdsMRD-pKwMGQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAFP8O3LaxHqpeUu-iifJMC=YkYmNXSUyxCbRnSdsMRD-pKwMGQ@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

Hi!

On Tue, Sep 22, 2020 at 03:51:12PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng wrot=
e:
> On Tue, Sep 22, 2020 at 2:55 PM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> > This is the 32-bit @local relocation; its history predates binutils CVS
> > (so older than 1999).  It is the same as @local24pc (which is documente=
d
> > in even the oldest ABI documents).  It *uses* the GOT (or PLT).
> >
> > If you do have @local24pc, just add an alias @local for it?
>=20
> R_PPC_LOCAL24PC is a legacy thing.

I have no idea what you call "legacy".  It is very much an active
feature.

> GCC appears to emit it when
> referencing hidden/internal/local symbols.

GCC uses it for PIC (and other things).

> It was invented probably
> because a couple of decades ago people think having relocation types
> to encode symbol properties was a good idea.

It *had* to be invented.  The ABIs clearly say what it does, and no
other mechanism provide for that.  It has nothing to do with symbol
properties.

> This is not useful
> because symbol information can change when merging information from
> other translation units (a default visibility can become hidden). Such
> properties are really the symbols', and not the relocation types'.
> ppc64 has unified R_PPC_LOCAL24PC/R_PPC_REL24/R_PPC_PLTREL24.

It is not clear to me what you are saying here.

> When I implemented R_PPC_LOCAL24PC for LLD
> (https://reviews.llvm.org/D62464 ) I simply treated it as an alias for
> R_PPC_REL24.

But it very obviously is *not*.  It might not matter for the one use
case you wanted to support, of course.

In any case, you should implement @local as well?  That is used as an
alias to @local24pc for over twenty years now.

> It is clear that LLVM integrated assembler needs to support @local24pc
> .... There isn't even a test case in binutils-gdb.
>=20
> If there is a @local24pc use case, just change it to @local. The
> suffix can probably be deleted as well.

If you want to claim to support the older ABIs, you need to implement
support for them.


Segher

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200922232956.GO28786%40gate.crashing.org.
