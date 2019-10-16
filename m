Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCGDT3WQKGQEW5CQLOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F86DA1D7
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Oct 2019 01:02:33 +0200 (CEST)
Received: by mail-yw1-xc39.google.com with SMTP id x198sf394902ywg.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Oct 2019 16:02:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571266952; cv=pass;
        d=google.com; s=arc-20160816;
        b=h690ootahuxenuYbNP6v8NSQHkj4OEK3mUCS2jPmKjAIynbq01caAWwqoo6DKRnuuX
         Ybd/VgA1NT1eV7Z1GKxz1Nuaduoqa03rTwPmgrGHUW16Humcwid6ZnkMZwIGNQTTOPWr
         DTICUDqJBtCTSKEDI4XZO4objyrK+Rr1KjU2g6lLNs9h/FnQIh39sACmj1AkCV9fgu82
         NpM7b+8aA8l1VnGJPf3tRNPAIim/dPIXDPXs2UBpjETfbQd10DcXUWcMvNpzQeP+LNFx
         aXyZ5ssl+ZkrlOWEcgZ/vNrDQLNm3X3xQBzWa+08uP1WI/GAc6oMp/G8UVE3CqrKcg4x
         xMOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=+/3eu3SafpWdqvdS1WhxrWDdUrmL68tGvhpjdaYS7BQ=;
        b=zzKtW6Svq0MRSJqQmz5eP3fH68zlqQn3flTLfu65wsTxCm2zCiWohFUfkcEcc1SsDO
         gGjhUSSGzM72lEbS/Wv1Tu8MSLF+PdQanD351ODizUsDZo9LUQlVXAlpGmtG48BUQJVR
         HGh5LvGcVSZ/Y5JdZMn8yZohheT2Sfctwd8LByukzHIiRH3h2K6CkMnB6zIY3tXDP/eN
         TRR2tL8EtujtrpvXns19XWMsAOJxFn191alBFyW0jdmIwn4CX/Hd9BVC92Or0VN2o65E
         rIZl6oq1AJqlYAKUpt1J7g09D9MiiZlCRa0GVILkit7VJLaA5rQlgNcKKkiKrlQcGB5Y
         tDQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JajOTL3F;
       spf=pass (google.com: domain of 3hqgnxqwkafsg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3hqGnXQwKAFsG67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+/3eu3SafpWdqvdS1WhxrWDdUrmL68tGvhpjdaYS7BQ=;
        b=cmW7xj+XEO6Uu9x6HsvsoztFmyWwVqly32X85kTg0BgkGwJy5BdyLEndmA1HxTzMIH
         8GXRcuYcQWk/pIEgzx4GK0ff06MSkuEb5nJMucMVMy7MeC2UbSJUWZ8wBYxyE9vk4V2g
         8H8P5aG4bAiTONL4c0n3s15EnkVJPQNv2SjVzV98SN/C5AlM41GUqz6Paok4LopvEnKM
         ZSfeinbkcyXOk2d57qAQauuGgEyiljrMaGQAYmSHqsF9o87irEu3HnBIBnJlQcGUJ6U8
         7SolCd7oE4n1SJgfRdZZycyDf0FhhTer4aaaUiZgCd/AwbnKroSh8HE3kgEIXpPWSJKX
         hwJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+/3eu3SafpWdqvdS1WhxrWDdUrmL68tGvhpjdaYS7BQ=;
        b=AGQUZMKCJJM/cCYQUKh5T4+bXSA0syNDC5PkAky3vw0tfCzMNfczw+vfqmJY7jI7IA
         VPMfY6e2d7VSo55Cdz7gdsdbGZnxLLyOgny268/aPWlhmrmutHiXG10JAS/ODb3ewmF6
         i/CobhGW3fzstgjC/97VnRzj/3pe/rzY1H848rYfChYMTttzA8O0MwSDs5zy9c1cZrHA
         tYdZHnymBbpRm0w/WVTMEBHOyndZH9XycmWn8Z00Yk0hkDailOgDczIrZ64GIoyEmKST
         AqAnKPR0nQNdHyQFUEmlI0USy7/GUTjLFTx0tU4HIVtDGAb1M8y3e9TV9N3DgUdM3xuj
         3m6w==
X-Gm-Message-State: APjAAAWJMC9odbcv+/EeI8OglEvodMQgybSIh++Lj45Jc1wns7lZrGqL
	GLw7pIS6yAp1025OVzc50GA=
X-Google-Smtp-Source: APXvYqwJvuEtpsYmY1abt+3tZMekXD7alg2rKMxmDHoTp196dVwYf5EZg9dj3IvoXQiVO3ibdPU6rw==
X-Received: by 2002:a25:c883:: with SMTP id y125mr167104ybf.358.1571266952579;
        Wed, 16 Oct 2019 16:02:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e090:: with SMTP id x138ls43337ybg.4.gmail; Wed, 16 Oct
 2019 16:02:32 -0700 (PDT)
X-Received: by 2002:a25:76c9:: with SMTP id r192mr166876ybc.396.1571266952107;
        Wed, 16 Oct 2019 16:02:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571266952; cv=none;
        d=google.com; s=arc-20160816;
        b=TAY81mBbHt9nn5YP4vDffonnzYLgJ25FN1jKbfA5+f2mfaQrLCrTWzkFJcTBnJX2RA
         D2sHIJHsOLxMbWmyYEsIcFzQxUBSJmXVxzQnVxsJBctdeW4/Hh+HlCBKEioTx9bYoqEe
         eRtI9ORkTGrQO/eZvfl9XNh/JhBkgjsHEjDq03w2G+3FJltTqs6PtW5XcQjZm4Of38Gu
         66TF5WkLHG/wHdBUjVexdZOlxF491FYfIdkd6XQSAb3KWsfd/ieloWDo3kBRm+9xkSDt
         GU2rA4mZ4UoWDV9ykSEOZ4+bz8YIINCFhf1dYGgVxod7ObOUPmIdW6T7R838TWySGg3l
         TU+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=TOJsDjv2PITtO+I2kY79PfikRO0R2R+nAMh5A6+hbOU=;
        b=FpQsSdbTP+chPOqMroCwd526wuCKg3M+FMBVoOO/rJ3K6TwEwSNU//fRwpxTSACKZZ
         bQfV0nZhqIfIg+HCEM7dWIhFMPbh/jOssnnL+Q3zDBz/sc1oZfFsjAuadRjTU9KRijya
         Fycjoq/NQKmb+XipdBP2LEQi1C3DPKHiAlUCQ9eSDzOOJ+P5xmY3N4djwCER5SSMPHuK
         HM2qGl1lD7+D+rwr2Vd2x+qZFRX/gRch2e6DfcDLBs33sA3HxfXw55sDEPTTUhNZnZIk
         u+IkyEJ0IHBI7sZAtsfYPtRn7NtzEeFb3Q24UJbPQo2Lvur4vU0qWyC+Fiulc2vXPEQD
         uf4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JajOTL3F;
       spf=pass (google.com: domain of 3hqgnxqwkafsg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3hqGnXQwKAFsG67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id g203si18316ywc.5.2019.10.16.16.02.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 16:02:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hqgnxqwkafsg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id g11so136149plm.22
        for <clang-built-linux@googlegroups.com>; Wed, 16 Oct 2019 16:02:32 -0700 (PDT)
X-Received: by 2002:a63:ce07:: with SMTP id y7mr652306pgf.234.1571266950938;
 Wed, 16 Oct 2019 16:02:30 -0700 (PDT)
Date: Wed, 16 Oct 2019 16:02:06 -0700
Message-Id: <20191016230209.39663-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH 0/3] drm/amdgpu: fix stack alignment ABI mismatch
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: harry.wentland@amd.com, alexander.deucher@amd.com
Cc: yshuiv7@gmail.com, andrew.cooper3@citrix.com, arnd@arndb.de, 
	clang-built-linux@googlegroups.com, mka@google.com, shirish.s@amd.com, 
	David1.Zhou@amd.com, christian.koenig@amd.com, amd-gfx@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JajOTL3F;       spf=pass
 (google.com: domain of 3hqgnxqwkafsg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3hqGnXQwKAFsG67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
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

The x86 kernel is compiled with an 8B stack alignment via
`-mpreferred-stack-boundary=3` for GCC since 3.6-rc1 via
commit d9b0cde91c60 ("x86-64, gcc: Use -mpreferred-stack-boundary=3 if supported")
or `-mstack-alignment=8` for Clang. Parts of the AMDGPU driver are
compiled with 16B stack alignment.

Generally, the stack alignment is part of the ABI. Linking together two
different translation units with differing stack alignment is dangerous,
particularly when the translation unit with the smaller stack alignment
makes calls into the translation unit with the larger stack alignment.
While 8B aligned stacks are sometimes also 16B aligned, they are not
always.

Multiple users have reported General Protection Faults (GPF) when using
the AMDGPU driver compiled with Clang. Clang is placing objects in stack
slots assuming the stack is 16B aligned, and selecting instructions that
require 16B aligned memory operands.

At runtime, syscall handlers with 8B aligned stack call into code that
assumes 16B stack alignment.  When the stack is a multiple of 8B but not
16B, these instructions result in a GPF.

Remove the code that added compatibility between the differing compiler
flags, as it will result in runtime GPFs when built with Clang.

The series is broken into 3 patches, the first is an important fix for
Clang for ChromeOS. The rest are attempted cleanups for GCC, but require
additional boot testing. The first patch is critical, the rest are nice
to have. I've compile tested the series with ToT Clang, GCC 4.9, and GCC
8.3 **but** I do not have hardware to test on, so I need folks with the
above compilers and relevant hardware to help test the series.

The first patch is a functional change for Clang only. It does not
change anything for any version of GCC. Yuxuan boot tested a previous
incarnation on hardware, but I've changed it enough that I think it made
sense to drop the previous tested by tag.

The second patch is a functional change for GCC 7.1+ only. It does not
affect older versions of GCC or Clang (though if someone wanted to
double check with pre-GCC 7.1 it wouldn't hurt).  It should be boot
tested on GCC 7.1+ on the relevant hardware.

The final patch is also a functional change for GCC 7.1+ only. It does
not affect older versions of GCC or Clang. It should be boot tested on
GCC 7.1+ on the relevant hardware. Theoretically, there may be an issue
with it, and it's ok to drop it. The series was intentional broken into
3 in order to allow them to be incrementally tested and accepted. It's
ok to take earlier patches without the later patches.

And finally, I do not condone linking object files of differing stack
alignments.  Idealistically, we'd mark the driver broken for pre-GCC
7.1.  Pragmatically, "if it ain't broke, don't fix it."

Nick Desaulniers (3):
  drm/amdgpu: fix stack alignment ABI mismatch for Clang
  drm/amdgpu: fix stack alignment ABI mismatch for GCC 7.1+
  drm/amdgpu: enable -msse2 for GCC 7.1+ users

 drivers/gpu/drm/amd/display/dc/calcs/Makefile | 19 ++++++++++++-------
 drivers/gpu/drm/amd/display/dc/dcn20/Makefile | 19 ++++++++++++-------
 drivers/gpu/drm/amd/display/dc/dcn21/Makefile | 19 ++++++++++++-------
 drivers/gpu/drm/amd/display/dc/dml/Makefile   | 19 ++++++++++++-------
 drivers/gpu/drm/amd/display/dc/dsc/Makefile   | 19 ++++++++++++-------
 5 files changed, 60 insertions(+), 35 deletions(-)

-- 
2.23.0.700.g56cf767bdb-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191016230209.39663-1-ndesaulniers%40google.com.
