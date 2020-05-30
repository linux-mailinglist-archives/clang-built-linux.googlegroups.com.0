Return-Path: <clang-built-linux+bncBDPPFIEASMFBBVFOZD3AKGQEK6SO4BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B991E8FAB
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 10:20:37 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id s4sf1778888ilc.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 01:20:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590826836; cv=pass;
        d=google.com; s=arc-20160816;
        b=R7yHEqMOakCSaD/tfdmCluaCzh+fcBl/f6Gqqziy3ZHkf2+nTZm88wm7quqfzbbTc+
         mzm1F0j4kuaGHy6maE2fFm1OUM3EleINqgC0WTzSBetxE26BHP56k7gF4GEcRcTx8mu6
         EiPmqinhA4I+sZFBncrO93+B7eG15HUd/Ik8C6MHpT/9kie9GzVLf9VacCROdKRcvuxb
         2EdNvfayX4G7ZMyHymPyI1Ob4EVe7D7DznoURzMBihjjdQfqn5cYaBw+ApbUM6yLy90e
         5i+gnVMAY0O92CbQMJ1esRicX7miYtmfCkjJwWg5D6OfWw/uuZ69a5k8LGcx6PWYKDoH
         DInw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=CtVVEMmtumspHVu46IRyXc4s1qkN/ydf+TaV+0zEUvk=;
        b=x/+YbMHsoajAMd27/WjjgoajTftu9/l3E3dDqmy9Gu22NiphOm33WN3ZsYpUq91Bfs
         4oiSApa7UwbZwvbs+fJ5iNQ3U1NfKp3LLhcICtmpOHspDjw7boIbeUZ0WI0ltQLS6ARN
         Kr8/yLINftFpVPQtHh4S1KPkUCL/Q11IW9DLNyj2f3jJSDUpVMEiVUkLS4vNO1u09GVF
         u3xfJay6R+JkIVKn++bwhwbHHQbBLQiScOL3vpOMmh5gQGUrQOBUdaFru2pXCh5gZt4d
         dN1ZBAdErmDImcr/B0QurjkyZLqye/e+62MOD+N7BFvU2kRJ77+ULV0L/UFUi5tCAa/x
         ahQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M908Kpub;
       spf=pass (google.com: domain of 3uxfsxgckecyu30sq34s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3UxfSXgcKEcYu30sq34s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=CtVVEMmtumspHVu46IRyXc4s1qkN/ydf+TaV+0zEUvk=;
        b=NkLr74HDEZb4UqVpGtESG7YBmQ8oXyCoNKQAktmRuC6g846FjPNSk/DrKX5/QPBqp4
         rqq57vFX/rCm4GVBD8QZo/C3vL7AVihYFdnBj532s0FcIKa9aPzKMr1srlVhHEdo6pZh
         MUgW+m1H3aA7TTexWMNPZ1+rBf3/jHmJoBs9/L05qypCXoRsAQlH5GD6/ku5DPbP0fHs
         7FN8xAnM0DBTqvxt/oJRgImdcTBRoHJ56oqrOaeQeEl6mUOYWO937ZPZAhDz4fmxjxuP
         7o1d9cXL01Bplp23gXfPMzblnVEoWUQHT9PR5SgKNJcXbf+NAzh7+uzy5q8sVllOITQK
         uQLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CtVVEMmtumspHVu46IRyXc4s1qkN/ydf+TaV+0zEUvk=;
        b=FsmPK2Fb1wJlUp95RgaHXKlk3QBt6c9nxjGDTZdfP1DeK2SoblgOw7sirtJknCaVUs
         vVmu839EYYakALIKaskS3j17FtsmnoMH8P6oGJJ1TDNozPufbfkQjzZkKxYUWQLoYBYc
         Bxkm2sl2d2opTtJHoTbrQPcIO9HJD1eWLzL3TNO1C1vIU4C/cVYvl1XN5ZGKS6p3V+Vz
         s1OshtD3iRrOEzFcv3veMG0VK1c2hYukZoNd8rQnWkkeLcM5IY05/K8cVKMncYjyAYOB
         er8JBFc1xY2CEhPeLHJ0/H/j+G45Ox4wbca+YOWWnwtrXPBXllGOiPea6yJbdD82F94D
         cA6A==
X-Gm-Message-State: AOAM532LEXGv6obNfVlEkvneEz6igxqP/4byfeaQHTsfqTBQSy9iBCvk
	CCr9y5tfpr+uQ1tobUR+Ia8=
X-Google-Smtp-Source: ABdhPJyrqmCgLjcs9AdGI5e6pQxGlMipELuXElY6fhG5u4+8nEzUSgLgijQPiZaF5QH/FTJivlAnRw==
X-Received: by 2002:a02:9a07:: with SMTP id b7mr11045756jal.44.1590826836609;
        Sat, 30 May 2020 01:20:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d28a:: with SMTP id p10ls2006609ilp.5.gmail; Sat, 30 May
 2020 01:20:36 -0700 (PDT)
X-Received: by 2002:a05:6e02:f44:: with SMTP id y4mr5365557ilj.237.1590826836216;
        Sat, 30 May 2020 01:20:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590826836; cv=none;
        d=google.com; s=arc-20160816;
        b=fBd7I8lmscZsilc0amfdJO813d8uYhYcmYWoVkfi3XpZfgnJCJf9jJG2LTzY9EmDpJ
         NXELZKYsX2xZVrRAVW+qGjeSdWERo2lvW0ZSa2/wImOPitfG+vrZoUc9M1496PysfKuO
         LSnWPbNAVY/FKRBEtosVu6tWPXDPA2kwXQ/6TDHojTiwpxxA/C6jt8CoQ+LCHvr1hG8J
         PMCc01V89Y/jcoejrL4D9GepKtPRtEdAjnGQmrX56dacGpqJnTi8nKEFk41LH4UXRZhg
         HGOO+rftjoQhsP/KzCYGuzGiSa0BIxD9uu0Ht16Cx5Iv7NEX527S0YUwQ/BctczGSLbd
         tuBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=rUynu7wHkaD5M9a1OIoajT2/mS+pyvyBnkF6EWXrYFA=;
        b=FtEqfA1OUTzIomF+rYot6GORW9IBCeqBuI1wcvel6tqhzL+bC7EOBRhLQgymGQEJ4G
         Hnd7xQfg5Z8eib6yI2txeNpoxPdVG1IIw3G9PQnJ7CzMhQiKJGoFEb+TLYy+Tc5ToNC3
         LmkZEW35DQP3aTK2no5F32yR3Lwb5JXnLrh+WtcYhBUa8bm2nH4i0xq8zpAcBWTCZeT+
         Pe8UtgbpwZdBuWzD8xr8ALlX8R+iHCX1pex2nZPdnGC2bdxXKgcXcqilyfmYmlBYJOa0
         f5Ke0CTGUgZ75yu9rUtTR/wRQnXcs0SImxcYgB+ed5pBe/zVTcpYB2ut7cKPsFzr6Qab
         JV8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M908Kpub;
       spf=pass (google.com: domain of 3uxfsxgckecyu30sq34s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3UxfSXgcKEcYu30sq34s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id k1si475628ilr.0.2020.05.30.01.20.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 May 2020 01:20:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3uxfsxgckecyu30sq34s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id y5so5158168qtd.0
        for <clang-built-linux@googlegroups.com>; Sat, 30 May 2020 01:20:36 -0700 (PDT)
X-Received: by 2002:a0c:dd88:: with SMTP id v8mr108967qvk.73.1590826835580;
 Sat, 30 May 2020 01:20:35 -0700 (PDT)
Date: Sat, 30 May 2020 01:20:12 -0700
Message-Id: <20200530082015.39162-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.rc2.251.g90737beb825-goog
Subject: [PATCH 0/3] perf test: Unwind fixes
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Quentin Monnet <quentin@isovalent.com>, 
	Alexei Starovoitov <ast@kernel.org>, Jakub Kicinski <kuba@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=M908Kpub;       spf=pass
 (google.com: domain of 3uxfsxgckecyu30sq34s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3UxfSXgcKEcYu30sq34s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--irogers.bounces.google.com;
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

Fix stack frame count and memory sanitizer issues when running the
dwarf unwinding test with the elfutils/libdw unwinder (libunwind
disabled).

Ian Rogers (3):
  tools compiler.h: Add attribute to disable tail calls
  perf tests: Don't tail call optimize in unwind test
  perf test: Initialize memory in dwarf-unwind

 tools/include/linux/compiler-gcc.h       |  8 ++++++++
 tools/include/linux/compiler.h           |  3 +++
 tools/perf/arch/x86/tests/dwarf-unwind.c |  8 ++++++++
 tools/perf/tests/dwarf-unwind.c          | 11 ++++++-----
 4 files changed, 25 insertions(+), 5 deletions(-)

-- 
2.27.0.rc2.251.g90737beb825-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200530082015.39162-1-irogers%40google.com.
