Return-Path: <clang-built-linux+bncBCK2XL5R4APRBYPR36AAMGQEOTKSP6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id ED31030A7F1
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 13:49:42 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id c13sf2005018lfm.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 04:49:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612183782; cv=pass;
        d=google.com; s=arc-20160816;
        b=SvaHR/b75pQdPUvHggtWLHvCQC2QWnRgTh7OMpU6x4N0zojuGClfc0f7fMvW5EW7j2
         AuGisjCEGZogOclzeJf+2KPPAX4Nwu+avMm7Iu5zGOF65YUMOENJjx4vhUbuqAedePKI
         OiyqVQU4PTXjsuU2sJmDB1kGRViN5L4bcGedibecpA94t//eIsqBZL6dhjZKtqUVIKuJ
         4V0/4wh5lmw+2NoWMLdnfvN0H+LLrdU6OXN/D70ylL5oDO7iqQNgIhp+NRq8ihvtfihX
         dvAnI6x08JcZnD7rFOcuSxmE0BgMGeoM6/RLJRB1zA81S8n9qDCSlywBguUZjyT1KYqW
         jq1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/TyQVpp6xGwVaI/Ki/X+irmpS7IanAkI2sVP8vEL2I8=;
        b=E5MNp+Y3CcBSXv3fNzvNhWEVRrUmTt+2CHfgCVs/L9zl0wSUsha4jD6ulLHUTfNfzX
         CNs8JjDh5fySWqY5vW0+4TAM39Te49awrLDPgKWMM0JLSZISvFi/ZA7E061elqE2ZRPy
         bUq5LzhmL7OUpk20RWza4YztsbdCgfuhmXQfPFoNs4pzEcm+MjOmONmeBVTBoJcR3mBw
         4KjtpScz4h9aduRI/5pprv369jgMgJG054+uqrwId6A7NKH6O74xJ/JbjNJOVRU3onTg
         dzMwM6YxzGNV+kvxEVhHK5ef+TTCdXBngNM/3CSLU2w+0876r6CPYR4YDgIBcuUYE6SQ
         SXJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=JyPpTIci;
       spf=pass (google.com: best guess record for domain of batv+58cbb8ee8f36e7b49046+6371+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+58cbb8ee8f36e7b49046+6371+infradead.org+hch@casper.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/TyQVpp6xGwVaI/Ki/X+irmpS7IanAkI2sVP8vEL2I8=;
        b=EbmG3AG/dwcDj8BY7eW13E/V71ATubvgbPVjdPm6IfpnP6J2LiSVa8LDOG7z718/MV
         Eq64+5lw3P8HdAySNoKed7pKKecSYdIvXaMKFpbPm1vPwA+DC4RebX2lAuo6zqm8gmr/
         cNfVXW1HTvpxaevrpmiWxsifJ8HP/vS6jH8+iB/c1bFXORTp0sjpwFIllH+JzJKCWevp
         l5KfFdpHiJbSD8h9XhD63h6yJKyCBOMo0GVNhvqZ4ESXxjU6ndAnVD0659Mvdzk0cE6d
         mjJ/4Pw13HCo5R0f9zGwXNnpvyGt/e/BMKQ5qXZrwRCEmmXUVVNRELUTL5g/erMg5wCu
         7bSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/TyQVpp6xGwVaI/Ki/X+irmpS7IanAkI2sVP8vEL2I8=;
        b=TY5vMAN6OHUl8vy7svg2IaRL17Ef98CsedZ9m/OpTwmhA6EsaeVbcPvS+Fq0+k5I3O
         MLsywULHR2xGJ510egpzvUUHcrorG7TeGsMjEU9On/hYT+LAS6IcvvOvILbaRZ/tvIuD
         4MXBIAkN2NspT+nXIpYgcWfw6Mdj0SdxsvEwnhKLRkhGKHvjGhrGMmmtm/89IedUZ/pV
         19mU8AFzqdZoBMGJAQxxu1PqywzOsA2kJqPXfAVkQenIOeJIcEVRLCiejZ72NuGxjHfX
         +R7RFi5L+BK9xeE7QPV/3ZCRht/VHgqaGsk3wJppL0TRuednS9UldI0P5MrHPpITHX56
         HBCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530SapFP4dhRuZSVqFhmXelsWE0ShkcPi79Ifqpz4oGgxG06jrum
	BDIDeEzbMarUPFGA052g1fE=
X-Google-Smtp-Source: ABdhPJwT0UKocKEa9Pd+2W+YM4MHNZ3ehoC68nLR13kFrreAm3EcGRSoI/n2+LUDM69JPKc5LAkh4g==
X-Received: by 2002:a2e:7e03:: with SMTP id z3mr10134815ljc.204.1612183778006;
        Mon, 01 Feb 2021 04:49:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8e77:: with SMTP id t23ls3080194ljk.0.gmail; Mon, 01 Feb
 2021 04:49:32 -0800 (PST)
X-Received: by 2002:a2e:85cf:: with SMTP id h15mr10106359ljj.452.1612183772585;
        Mon, 01 Feb 2021 04:49:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612183772; cv=none;
        d=google.com; s=arc-20160816;
        b=nXU7HeJ5+w4O5//cZdmM+G5agIbE2REw+J3TAm6rCWKDl493723yC6B4ET5pGjku7H
         NsGFDX2WrkOShc2JkrmweyXu790rwkZBbHDGujK6ei7brYaBklScolKHmT1ZITfv7kPd
         Dy2XqeAFPVQJCoAgi3XtX5ajrvPAxuh1g3b/iFE1kYLhlsnQIZ/iR6GxXlxPkX4pYbQF
         WKUpC5+BJjANmJ92ups4jHCylh6bN6KizXnFT2Ys3FHdpZpUteEt059P204dCsZ+92tK
         rTTPFUJ5qenbLmnMaUP4mwO/5q3E2yEysAW+JBcZY0l60/cnKWwK8pvzX/P6JgTUcq/g
         e3GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LNMXZeM5uNb+EU3vYkiOU7VuaDzKzgxr27M0EWd1gXg=;
        b=XuOBC63Wk5kJaUOCR2cwBdwtabZgI5OK7LQIqugj5wxyLPhONsuY3pnIfjl3CCpSQs
         emC9lYZ8a1zrMK+CUQYkuezcGq3fuMMqZNk7LrYfKaXpNx1DJJqtx3DDO0qQvoefy+fu
         6R3KhJBYddH+2ePRm21i5AdUz4SLG4RynPeF5d2vQTV7jSLe5d1PxH7e6ni9GaJxHXda
         BrRYvsuqbfP8+yBNlrxOZPgyG/RatwY9UjLFzSEepwmxakXRu4QFfNK6WpCUQOHihByL
         yyOBAeghKAJe2PysznMFoMn08M7E2vrbaKSVflkt1hRiwnjuphQd/x8FE7jKiecPG0qV
         u3HA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=JyPpTIci;
       spf=pass (google.com: best guess record for domain of batv+58cbb8ee8f36e7b49046+6371+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+58cbb8ee8f36e7b49046+6371+infradead.org+hch@casper.srs.infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id a24si594000ljj.0.2021.02.01.04.49.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Feb 2021 04:49:31 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of batv+58cbb8ee8f36e7b49046+6371+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from hch by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1l6Ydw-00DmNX-SM; Mon, 01 Feb 2021 12:49:25 +0000
Date: Mon, 1 Feb 2021 12:49:24 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Vinicius Tinti <viniciustinti@gmail.com>
Cc: Andreas Dilger <adilger.kernel@dilger.ca>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Theodore Ts'o <tytso@mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] ext4: Enable code path when DX_DEBUG is set
Message-ID: <20210201124924.GA3284018@infradead.org>
References: <AAB32610-D238-4137-96DE-33655AAAB545@dilger.ca>
 <20210201003125.90257-1-viniciustinti@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210201003125.90257-1-viniciustinti@gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by casper.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=JyPpTIci;
       spf=pass (google.com: best guess record for domain of
 batv+58cbb8ee8f36e7b49046+6371+infradead.org+hch@casper.srs.infradead.org
 designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+58cbb8ee8f36e7b49046+6371+infradead.org+hch@casper.srs.infradead.org
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

DX_DEBUG is completely dead code, so either kill it off or make it an
actual CONFIG_* symbol through Kconfig if it seems useful.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210201124924.GA3284018%40infradead.org.
