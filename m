Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYGL2H6QKGQE2LNCCMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 418042B72D8
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 01:08:02 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id 100sf225239qtf.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 16:08:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605658081; cv=pass;
        d=google.com; s=arc-20160816;
        b=FW951eLBDx82DnpDaz+TXvkqGvZr07Gdxi7LrQ5IyDNPLkSbVxV107Ti3QcdU2XJgw
         oGJDT20HTlN38tDokCvb0TELV0gm+OFtTRUy4aFs3pgSDjJ/hxAMVSzPyxKtI2N8qMnP
         Oq+Qs2JAnRLN3XDJEuLQ8A/mdAU7BKieq1ggA18z4J2Qk8ysig6fguJKQOuxlBMzJGU7
         su0kYuki4COnD38hJTTXJ+vo0rFRks0igEiCf+yUGihVcDAGAhBPl1IVfc54zD5qOpG8
         eaEMx4qfR7R6ARfyJ4Zrc8hSygAs/bszor4TJZxb2/8s9w0GY3gnYsNXMV63+XnKbWFF
         w/ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=rQb5OaR8TH2N5Scfe0N1WdffIGtjY1/f6B47uX+3Z1o=;
        b=kNYywA0mP5Osn5P7FU/R0G2of5CCFXgufgMqUahB6fdCVwRjHdcRgyS+fzxdwAp+ER
         r5kb4g7fjek1Kxq3wVnVRgMbQzsRg8ztujA2bKMhej+u7h5zwBePg1fcoxN8x/Fz6mg9
         rcuEZpBbGowOYhq2tl8BgXJAo7/i5T+3DwmeLvFBG8ss2aVBIRlQFff9aw9dR1kKS9Pa
         RBRVZXvzrK5haw8kuIgFlBwOmCweSd2RODB9YRxup8VtDuleKyIFfdqPqvNnebCVjaYw
         wFNazf4Tkq81w695uUQ/ZgBJ/3zakaYnNA+AUQ2RFhvhhPUxNnEAn9X51QKW3nqWb4ME
         LvAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ddMrpjFp;
       spf=pass (google.com: domain of 34gw0xwwkaiesijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=34GW0XwwKAIEsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rQb5OaR8TH2N5Scfe0N1WdffIGtjY1/f6B47uX+3Z1o=;
        b=UJnosoji2TxEYeqvXl8PSz+M+29PykASo/B3AQc9d3vc43I9uVE2IU4vOYpaUe/FB/
         sSpaDkFifsuiF2IfO2cegtep3f7hXkAYiDxJ1YD906kTZOe7/sxmmMzhTUZoxBwMl7n4
         bfWxMwLA9p8jP4Uav4neCs0zTY6rY56VDkz9yacN08M36veveM90Yo6Lae7CR1oKS0MB
         f17GQJO9tbp0BDruu9FNd4jT2gUC8V4fcldtj0u4uCzrY34SCFxGuFpdodc1Og+/Vjur
         K6uFQ3U+OWdsZbWRBZ4fWdpIP5LiUN/GAc0I571k6IAPMSbnhXVxc+rYm5GcFHt2y8hY
         IX2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rQb5OaR8TH2N5Scfe0N1WdffIGtjY1/f6B47uX+3Z1o=;
        b=Q5GadK/a3bry7Y6d/YF8SFxOXrcnZ+RxAYV08OZG+3Nx6ajAlRa/WACL66MVZXWCrS
         W10X9SVVVOVvFQnbjLsP7B600I5iLNFAYMBvZkNXtqh8LzAXwYpD/0vUmYdN0ST7yGVp
         EdvPeOMoM/9G/L3uf2WzylxCeqOTaJpDBoWik6O4eQhQbnzagAvQ/gbVjwDBNvGzmg2P
         fvll9U/vZxq+EbQfcJktn6lbheOsGsYjmfSGU5A0fFSjAOLAksU0vNhUdEdxefyzN8pd
         ofR5pNUrxWrMA1BUxE+y2h5vWbZ38xk8GWsjLA92YansQT/kXXnu3O23DFgGhT/4+jQU
         jHBw==
X-Gm-Message-State: AOAM533DCxmlXPSJjtmDepOlf3qVZP85swW8spX7EghtX6XbtwWWJEtl
	8UrbcRUWxDdbai5qn2bTkIE=
X-Google-Smtp-Source: ABdhPJwel6vkgrTednDS13mx8fP1wC4iegydAktP3VE1zvEvf94Z9dEG4Y3wDhqbhIhU7NKDzvTrcw==
X-Received: by 2002:ac8:5557:: with SMTP id o23mr1807993qtr.252.1605658081011;
        Tue, 17 Nov 2020 16:08:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5647:: with SMTP id 7ls6096582qtt.8.gmail; Tue, 17 Nov
 2020 16:08:00 -0800 (PST)
X-Received: by 2002:a05:622a:106:: with SMTP id u6mr2374399qtw.344.1605658080435;
        Tue, 17 Nov 2020 16:08:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605658080; cv=none;
        d=google.com; s=arc-20160816;
        b=bsZW/su3z2f9DCVK9TJV3Guv5NZDB2Bklnd17ChjpUVMs6kOtsqfGV7W4mebBz9bM0
         UQwJ/CaJL46Jy4TVjtbX1T0LyA7wn9we88Qn0vhh7oNqmCxabOPkAsnQNO7BMoEYmCsv
         FpjUyNj+w0mIgE/ohkCoJBfOxrfVfQpVj7FNo4Y82k2GMnouEgqksRbz9qrneohSVcon
         S13qnN0znOrnVdEikF3PGJfrVnqllyAfNpntxyhmvrCaGu2YLtx0L9WjNCQ97sahAOYc
         Mry7BTwLZcNt8NsQCoytwxsovQXybZ6vBzbO3YAnBHfeijMwoAmUA7VOX0Igj1rg6FlG
         O2xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=V3tvIh5NHv05LPYSP9VOlCUVLr3gN78y2A44GlQ/+zg=;
        b=tFO5Z+b2mPPXCBucfLiAxShAETXEofx+xXf/V8EQO4RuGR2EASlw1eqsBYoBh3/YbQ
         OxHEsZbDt5PGGZTGRAAy5E7l2/ie79ZWpKAO5n3g71RcPvw2adP7mDiWwmIWT1Jz7Nnu
         PsPpVC+Icpqr3X0NACgsABqNlq/n1wJNo37DfVTolMcwQINAYOECFuezym7SZxgZ64HQ
         AOI/GdUszg8SSMWi0XSJy9V8i20RB/H8DD5WSYpqhFfbbPM9u2OfkU9wJx/Nuq62YxQ7
         qLjlW3lodoFp0vpsRFtn9m0Og3lpzrtaU12Ctr83XwTfODRlNZKMIzYpYNXZ37Nj2wjP
         Dw0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ddMrpjFp;
       spf=pass (google.com: domain of 34gw0xwwkaiesijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=34GW0XwwKAIEsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id m27si1759872qtg.2.2020.11.17.16.08.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 16:08:00 -0800 (PST)
Received-SPF: pass (google.com: domain of 34gw0xwwkaiesijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id 74so190766qki.12
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 16:08:00 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:f185:: with SMTP id
 m5mr2278509qvl.27.1605658080093; Tue, 17 Nov 2020 16:08:00 -0800 (PST)
Date: Tue, 17 Nov 2020 16:07:48 -0800
Message-Id: <20201118000751.845172-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [PATCH v2 0/3] PPC: Fix -Wimplicit-fallthrough for clang
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: "Gustavo A . R . Silva" <gustavoars@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ddMrpjFp;       spf=pass
 (google.com: domain of 34gw0xwwkaiesijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=34GW0XwwKAIEsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

While cleaning up the last few -Wimplicit-fallthrough warnings in tree
for Clang, I noticed
commit 6a9dc5fd6170d ("lib: Revert use of fallthrough pseudo-keyword in lib/")
which seemed to undo a bunch of fixes in lib/ due to breakage in
arch/powerpc/boot/ not including compiler_types.h.  We don't need
compiler_types.h for the definition of `fallthrough`, simply
compiler_attributes.h.  Include that, revert the revert to lib/, and fix
the last remaining cases I observed for powernv_defconfig.

Changes V1->V2:
* collect tags via b4 (fix Gustavo's tag as per Miguel in patch 2/3).
* reword commit message of patch 1/3 as per Arvind.
* reformat patch 2/3 as per kernel test robot and Gustavo.

Nick Desaulniers (3):
  powerpc: boot: include compiler_attributes.h
  Revert "lib: Revert use of fallthrough pseudo-keyword in lib/"
  powerpc: fix -Wimplicit-fallthrough

 arch/powerpc/boot/Makefile      |  1 +
 arch/powerpc/boot/decompress.c  |  1 -
 arch/powerpc/kernel/prom_init.c |  1 +
 arch/powerpc/kernel/uprobes.c   |  1 +
 arch/powerpc/perf/imc-pmu.c     |  1 +
 lib/asn1_decoder.c              |  4 ++--
 lib/assoc_array.c               |  2 +-
 lib/bootconfig.c                |  4 ++--
 lib/cmdline.c                   | 10 ++++-----
 lib/dim/net_dim.c               |  2 +-
 lib/dim/rdma_dim.c              |  4 ++--
 lib/glob.c                      |  2 +-
 lib/siphash.c                   | 36 ++++++++++++++++-----------------
 lib/ts_fsm.c                    |  2 +-
 lib/vsprintf.c                  | 14 ++++++-------
 lib/xz/xz_dec_lzma2.c           |  4 ++--
 lib/xz/xz_dec_stream.c          | 16 +++++++--------
 lib/zstd/bitstream.h            | 10 ++++-----
 lib/zstd/compress.c             |  2 +-
 lib/zstd/decompress.c           | 12 +++++------
 lib/zstd/huf_compress.c         | 17 +++++++++++-----
 21 files changed, 78 insertions(+), 68 deletions(-)

-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118000751.845172-1-ndesaulniers%40google.com.
