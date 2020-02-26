Return-Path: <clang-built-linux+bncBAABBSEF3PZAKGQEU7L26GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAB4170887
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 20:11:05 +0100 (CET)
Received: by mail-yw1-xc37.google.com with SMTP id r10sf729807ywa.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 11:11:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582744264; cv=pass;
        d=google.com; s=arc-20160816;
        b=jXocgXBDOexIowwrmqiLaPMcqR/WYx7u3e7ayut9oQKzL99IVUo9pmxcrO+h5HE17P
         iWwkYBnidkawHx3DK3kP3x04I9X9mVfdSkFoLPMy6Ed/9jycsKIj+MxoRh4NOUDSVpZc
         SZ2dOXpktq+Ajh/e4LnnNeHct7j5jijGzI+us/QhdWiSkj2dHxGLRaRSWEiLQ+MNxSy3
         JKJIOgo+t1DuM3K0xTr/285DU0SSSh5YOwFApbfdOhGWdLVidby7MrvtDyoqjcwMbubM
         tkGx3Nb9MMHkEVo1yPk+opvKIT1rxCUgR1GOaHYOlEtDIQZlq8pRrx4X4iaYvUnKpqS0
         EdFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=uuoGFaAr/iTNNQL2tmLtHGRwdPppMdhYq1kPLHVwaac=;
        b=cnKDiP3kUdUmig2CXkl+WzehikvSYoXzG6K5KK/CLLCtD0JoRhP2NRamxJqyyUOETZ
         ptqukxwDbDVEevHFSIzQqlGKziYRZ200HoTyk4aCueDSjF0vlUCmtDzuH+ldw8eE4JgE
         FJsp++BKrT25CT+N10ktcdKjFsDbArg574FnGcVCt/PHNoOY5BeJtqibY1HQr9fiT0Zh
         hbMq7on+oGTcmM1Ll2VPx8L2YDxT2+2ouD1WMihJNs2OujDsRWEZE2TqZSyXreIT75At
         rQOqfpakCP+c0uUOPGbrk2j2PFe901cTjzPY9mFAttfBDGkb3V+m+P1TrNxlwCA4GFqu
         /iuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of kristen@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=kristen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uuoGFaAr/iTNNQL2tmLtHGRwdPppMdhYq1kPLHVwaac=;
        b=HXjuQjwbMS7Uh2nMH2YTOFgZ/Gr3jEscgMr8ZeXHYPx1c0xcFCCEUeFHp4AQQ8YXc9
         UpUdOahps9X5Qupxg7Ugo5ier/Tsj2Raqya7x13mmB2wXOQYXXd9Ebbl3hnuSO35dh0D
         lxFtiILfEAJoBPlfC3f2df9HBaDc7BYYNC1pnhEDcEcmGWJufCsBCZl+a3sPg92eH7P3
         xjoni4loVjPzarw0Lzo4TJQgpjdACF9R4cIAPzMFfB8+a408X3cS3MWrDHEg1OGBnP+f
         LCuN8JIOWBKdsauKnH+0BAl5gQykyRCkIWgqivUfJtj/Kt0uaoLWCEO871U5nuqa9G3V
         zITQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uuoGFaAr/iTNNQL2tmLtHGRwdPppMdhYq1kPLHVwaac=;
        b=F9LJC6xiLnltGjzFMbIitnUofetbcspN4dfPtVOkzPLDeE94yY7F4VLESla2KVj2ex
         okhNH2YVtDfsV8wCCTQAj9XjSg17hUaYKAGLgK+CqGQarl+Pfwj60G6eiGplByRayWqL
         bA+4kkvG6JaVVDUD1EZru+gjgNq6EPdfJW+Y+7kQJea2v6xU7JYRsqjOlcRW2y+YFbvq
         mqFUpaBc7dfQzuNAi+li+WyEVL9G6fannUYYH3Z1rbE5LIxIEE8jQi+STFm77LhZ7qDV
         NfVASMoqgDGzxyrq91bXNLgZLz68wApevPEzP9Vho4SLY+yh4UfyJmZyN/BFh3epJzFs
         PHqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUVPJ3d6a2xQZaXDOu0JAdpqTi9bPmaNsS9AG2lJxMMIscB1iV5
	R6nNNyTBT700oZdIfeSlscs=
X-Google-Smtp-Source: APXvYqxoX938HUrW1WpSFvALTgGBTaoHNlsHOSTZnCVnN2GXxkb5x142Y6fDmQjCNVRPeNYR8y5XzQ==
X-Received: by 2002:a25:5484:: with SMTP id i126mr453240ybb.106.1582744264296;
        Wed, 26 Feb 2020 11:11:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cb42:: with SMTP id b63ls7675ybg.6.gmail; Wed, 26 Feb
 2020 11:11:04 -0800 (PST)
X-Received: by 2002:a25:cc15:: with SMTP id l21mr367100ybf.385.1582744263930;
        Wed, 26 Feb 2020 11:11:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582744263; cv=none;
        d=google.com; s=arc-20160816;
        b=us976+TvHPX6U9yCNkqJiVK4TUDtue1579uYy04zUjVwDPbs+Ke3NHmmp3aCLzLbn2
         eqP2ghJrrNqWu76NfeExGQpbcmT1u/KvwdHrVf5wFMt3jFbMu0w6J2sLj7bRtA6+Ol68
         XchTcJ8BmgzNBK5k7XL+uXyL2Y3UkE/WDKAAFeD/Uk6RZJuvSapJwr5Csc6iGkrZC2jN
         RNomHpJo2khECwDh68mUw+b9MW3sPaoRf+ianBvd/VB5xMbfh19yM00sha1q6KzSpvLP
         8ps70DRzrUmkC2OVwXZgZ0cQ5ZmUe8OOyTOkI2cfyXNWwp50bOmX3kJiz2FtnaxGwivh
         kR7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=8KYO4B1+l8PBfM4GbJBFe9M5uen+quuHRrHnieP8oJ4=;
        b=MN0JES8ovf7FGahkxnejWktuUZ5rM7QXASJsJAPs0KVOF0TJB28IA2z+FprBnTv7Ox
         aWdik67T0JYJOp7hdrlqWrAqRObm+Dop2znv+Q57x6F8Z72/7pjZImN4BQ8ZhOA8Wyx2
         r53GduxSkq10N1YufVO4flPc8altzS+W75bUSq5GmlEB8Lfl2nrUw83EbBJySn9tbcW1
         nclWO3ptID0WQmRGTAusV1BUUqbk5zpFOHRHQLfovcz5hr5diQic7H3WbrGLLKdLx7Pl
         R2A2SG/qi/mWwAd7lSFT4VqDaRZObmButW5GQGvtZnTqYPlIRBF/stS5PZx1E6qGpdNq
         woCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of kristen@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=kristen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id s64si41677ywf.0.2020.02.26.11.11.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Feb 2020 11:11:03 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of kristen@linux.intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Feb 2020 11:11:02 -0800
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; 
   d="scan'208";a="438538080"
Received: from unknown (HELO kcaccard-mobl1.jf.intel.com) ([10.24.11.14])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Feb 2020 11:11:01 -0800
Message-ID: <16822a0460e37e7a388217c63da8882d2904d8fc.camel@linux.intel.com>
Subject: Re: --orphan-handling=warn
From: Kristen Carlson Accardi <kristen@linux.intel.com>
To: Kees Cook <keescook@chromium.org>, Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Arvind Sankar
	 <nivedita@alum.mit.edu>, Borislav Petkov <bp@alien8.de>, Nathan Chancellor
	 <natechancellor@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)"
	 <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, clang-built-linux
	 <clang-built-linux@googlegroups.com>, Michael Matz <matz@suse.de>
Date: Wed, 26 Feb 2020 11:11:01 -0800
In-Reply-To: <202002252103.B4BBF01091@keescook>
References: <20200222072144.asqaxlv364s6ezbv@google.com>
	 <20200222074254.GB11284@zn.tnic>
	 <20200222162225.GA3326744@rani.riverdale.lan>
	 <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
	 <202002242122.AA4D1B8@keescook>
	 <20200225182951.GA1179890@rani.riverdale.lan>
	 <202002251140.4F28F0A4F@keescook>
	 <CAKwvOdnkr1W4LTm8XmTKGkSDUhSBRowLbKwJwyitDMAGLh9ywg@mail.gmail.com>
	 <202002251358.EDA50C11F@keescook>
	 <20200226015606.ij7wn7emuj4bfkvn@google.com>
	 <202002252103.B4BBF01091@keescook>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29)
MIME-Version: 1.0
X-Original-Sender: kristen@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of kristen@linux.intel.com
 designates 192.55.52.88 as permitted sender) smtp.mailfrom=kristen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Tue, 2020-02-25 at 21:35 -0800, Kees Cook wrote:
> 
> Thanks for looking into this! It'll be really nice to have the orphan
> section warnings working in the kernel. And getting the ground work
> for
> FGKASLR ready will be nice!
> 
> Kristen, can I convince you that FG stands for function-granular
> instead of fine-grain? :)
> 

Yes, sounds good to me - that way if we ever do basic block reordering
or some crazy thing like that we don't have to say even-finer-fine-
grained KASLR :).

Thanks for your help making this work.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/16822a0460e37e7a388217c63da8882d2904d8fc.camel%40linux.intel.com.
