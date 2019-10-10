Return-Path: <clang-built-linux+bncBDPPFIEASMFBBRPU7XWAKGQEI46JSRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B47D307A
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 20:36:56 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id u12sf5388379pfn.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 11:36:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570732615; cv=pass;
        d=google.com; s=arc-20160816;
        b=qQRjtj3M6ou/Mj9VPSnwYOKZNBIe3kz8TgcKtaYlE9xePb/c+dj9ahIzHtG53i5ePZ
         F8ZibAlBgEdzQtrcQR9sBPICb2H73dXP3VKUPTcokFQif/paJ5TRmHMry9RfrYC2Bh9e
         e7mrYwqRery2hh5av0y9FG9+e1hZDJRSmv3qZvYYZtFZmyj8Wa+Bh3Sf0+hwsYeLe+Rv
         cesXqdzKxvGZ1mqwa/yeVvaeGC2TdrM1TdWWKqWM46GTgu8WReLJktB1zpENbUh6Rw8Q
         H34aSirP9ia7P2OtzgIlOOgX2we44vmMwu/6qWV5kszOwztZEwfk7Qk88VvDwzA8wJvD
         3lVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=UvWLZCeivJbU2LZXROX5Mx0/E3tfzaVsGjg29TXloSw=;
        b=dK8uu2voarfpw1Moj+10maOijN8mJMe+gek06uAEnUHVp0OKnpCwoKCyoEqkDvjb3/
         aOWvXMhblwLISU4sObuETza/yHYbmOhCkLXCFH2kVb44cmUG/LEItbVJawsT7HbX+CIT
         SBJ4Rd5dyYClDtvJfXBpbJnhEYDiVjEemWQGhKCR5v/DB4Bj0d006hoMDwxtlzWDbMrq
         sDGUVu9aw1vzAB5UE8nFbnoR2mHPXLtwCrXbMcEVzv0pxuKYWdVVdMdvZhd08/q3mloP
         Mt3Dk9M4U1LqdCQgnxnt3M0dkoXADCw38DPHkn+nCMPPyTvY594w4+5zOpsqpswfA5JZ
         gh0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mQe5f84M;
       spf=pass (google.com: domain of 3rxqfxqckeaosbyqobcqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3RXqfXQcKEaoSbYQObcQYYQVO.MYWMVKXQ-LeSVd-VSXehQYYQVOQbYeZc.MYW@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=UvWLZCeivJbU2LZXROX5Mx0/E3tfzaVsGjg29TXloSw=;
        b=bxq8vMkQqRRMzOGa3RMSEZQJnpfmnm9Pfd4+hR9iOtlIt1ULjOI9aPttUCh7oi0BOd
         xPUAoO6CcnbJpLm433cNWpEexPqG1WWUFK58wea1L9VfWv3+uiL1P2SWhSKKIWYWX+DQ
         JaGVMe2VbSbfjzo0Of0hhxzQojt2o7z09e1zEwEUC1jWRYZufXmGTA5FBnSntkD+wLao
         900uBRuA47tEFBEsAaaA1PQJxJ3VZuROdy31wcwswzvdQFg+hMiJzg2oHpg0W3R9XyqL
         SSf2i+UIDLPpPFIRIPYk+BweRvtcTQh/odzDE0Kq+MqNGotEgXcONnOz7CzuGPt6xDXJ
         Z4HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UvWLZCeivJbU2LZXROX5Mx0/E3tfzaVsGjg29TXloSw=;
        b=bLj17Rwyst46DCrUe9oczZoWaoNC7l8tYdfCRQjuWsGrBFZ6msQLP5AcuYLygukmOj
         qm49zE5QdrA7rC1vPDVAw0s/bi94dWrJWhPuJfwhgY4GIs4YjhdAD/FOcHU0uvCxHNQg
         B+0zDkXX4k69nZ9VtwpOAdE/zzej+Ohfr4F6mMDqQ1SUDI5+ZoucevxoUM9+1Lt9pRux
         vamzNHt2BiOxHTedPdTQoCkCcY77+CvtgEaHzEnOL0zgySLwbg5iBK00bLjmkjcbA0VO
         rL0Kx8LX4mbsvFY1P0Q+zKCjDO4pPO6m+fiXWlX6FC5MHRLC4S/oYR0DCjx99wLzzpjS
         hDPQ==
X-Gm-Message-State: APjAAAUH5F6uIOyMVVtkfjDEGicIjQP0DGr5Xi9mfXKWYnV0SxNO6jWF
	Di32Ptw74d4MP4Oa2xiS3yg=
X-Google-Smtp-Source: APXvYqwXysGpoI4ZfRrdXBNrFT4k2qTywGMp0u0xjPjhfvWuIAaco+9kfPzUX08OmZHzPH+RcWb3vg==
X-Received: by 2002:a63:495b:: with SMTP id y27mr12527072pgk.438.1570732614034;
        Thu, 10 Oct 2019 11:36:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a704:: with SMTP id w4ls1412902plq.14.gmail; Thu, 10
 Oct 2019 11:36:53 -0700 (PDT)
X-Received: by 2002:a17:90a:2466:: with SMTP id h93mr12829508pje.79.1570732613729;
        Thu, 10 Oct 2019 11:36:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570732613; cv=none;
        d=google.com; s=arc-20160816;
        b=Aj6zcfuqO3X0fbITtVmpFWTtvijuF9rp5vM/TubCvfMmGZDiedoKRKekLiH0zq1DZw
         JmLuDVTi8FObU+mL8aK6vBuUZWMvX78nNGiT7LmU853OiEW8na9RSvE9AQu3KBWlh9qu
         +Ruiat50Hm3RRFiwPb7r0p7ApB4uFaP7i7NWDg/fzbvHgdCBH3sPOq2J+GAGv4YaEajp
         PjtX8cscMGsVAoy+0/iEOwg9HAIhvjHOFVVx5xdNJ6UWKeF35AQ3/geNhVLIa+UBCjdE
         dKTF/dqpnqmrMMTQfEmJmAHr9nAYGjBJqshB+z9P7ZQlHFv9D2y6fwjCtgUSGZB+nv5q
         E1Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=sVYS71JsFcVLaSydirD+S+xHiSXAzbKTw4LNqNx48fs=;
        b=xP/tnK0qCm7sRaZQARo/QMYNZApUbT+HpgzAI38O3gv+2QjG6RqGfF52aWe0P8NSia
         ROTQQ4+vaWg718cZ1eSEOHPJLSRRbVJB9co3gx9kGxI9CS3uPBcyn6sky8iHXzKCyhis
         fFrj0M85tsRK80TuvvCs3DMJEGtHpFyFNr72PLLndk+jrvPpcJzTRONYl2IqvmiDJIRV
         m56EKUR9DEMT30+mSEqiHN+CBtvalV+qKTSccpe6fr0jcSF11NjjlkWLehgBAF1h2Ula
         paVTVxaQ/v/ftdtZ9BBYR7aGNT+izO0F3S7mvVXMqk8EotP2q22vJakv5Vb/i3quqSro
         QX1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mQe5f84M;
       spf=pass (google.com: domain of 3rxqfxqckeaosbyqobcqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3RXqfXQcKEaoSbYQObcQYYQVO.MYWMVKXQ-LeSVd-VSXehQYYQVOQbYeZc.MYW@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id s188si303473pgs.3.2019.10.10.11.36.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 11:36:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rxqfxqckeaosbyqobcqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id j9so4370670plk.21
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 11:36:53 -0700 (PDT)
X-Received: by 2002:a63:2d81:: with SMTP id t123mr12662972pgt.306.1570732613143;
 Thu, 10 Oct 2019 11:36:53 -0700 (PDT)
Date: Thu, 10 Oct 2019 11:36:44 -0700
Message-Id: <20191010183649.23768-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH 0/5] Improve objdump parsing, fix LLVM objdump
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Jin Yao <yao.jin@linux.intel.com>, 
	Song Liu <songliubraving@fb.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mQe5f84M;       spf=pass
 (google.com: domain of 3rxqfxqckeaosbyqobcqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3RXqfXQcKEaoSbYQObcQYYQVO.MYWMVKXQ-LeSVd-VSXehQYYQVOQbYeZc.MYW@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

The objdump command line is piped through grep and expand meaning
failures don't surface. Refactor symbol__disassemble so that it manages
the memory for the read line, as well as trimming and expanding tabs.
Correct the objdump flag '--no-show-raw' to be '--no-show-raw-insn'
which binutils objdump permissively allows but fails with LLVM objdump.

Ian Rogers (5):
  perf annotate: avoid reallocation in objdump parsing
  perf annotate: use run-command.h to fork objdump
  perf annotate: don't pipe objdump output through grep
  perf annotate: don't pipe objdump output through expand
  perf annotate: fix objdump --no-show-raw-insn flag

 tools/perf/util/annotate.c | 195 +++++++++++++++++++++++++------------
 1 file changed, 131 insertions(+), 64 deletions(-)

-- 
2.23.0.581.g78d2f28ef7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191010183649.23768-1-irogers%40google.com.
