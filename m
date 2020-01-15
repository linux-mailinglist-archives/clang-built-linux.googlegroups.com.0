Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB2537TYAKGQEYWNW4WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E9F13C50F
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 15:13:00 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id y15sf10368847pgk.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 06:13:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579097579; cv=pass;
        d=google.com; s=arc-20160816;
        b=UscL/3h69x9LvdzIvSwWKvDs/0bnDBdYU3nuTwy9Cb05QiMjXQJiN6LJOqkeNir8lp
         1cltRBGSxjf0X/U00h1IS+EsdLcbOTRSJW5/Q2oaAanfNbgCAchAsXJcYTMe9/OsyuZ6
         Cu8edZrYyvfsJ21RmutdbVujqvqqHjXpxDG/O9LTAC0i1fa17XM0kfompfXBYVpUdbb7
         ecSN2vYyVBI1SCwyzTufPVShbFI2QaBSlHo2HrVeU1KM3yHZqZ9cK6pyB70tS9DQBPPp
         6lEsWEGZTr8x+gDEjXGPm06GhxhQgIAycTMfY0HtInkv+H3aE+frW76oeL5IZqiWTFQT
         VdFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:message-id:date:cc:to:from:subject:sender
         :dkim-signature;
        bh=/OuASCnknQSSpMyAX5ALxD25J6vcW5LJdX1kpLOoGlw=;
        b=heQRTUa5U4crKW2B3830i5IFrhAeidHbLAHZEri4cryi5veVOnvRWypNPgUd4Tu7V1
         GqLoQFhhmFJ2l7if6eEJ55X5xnucf4Nh6ocNDthb5C1Pw4fObn5kvLNu+9m2ErUVBcXj
         +rPSNziPn7qf7tXGnZRgYOOdRK8uSuzcGEM/RhXefLa3JJ/zaXoS6yLLlxJrwXpXWqxy
         hoimgxcnqWzDSih2vgQ+1roII1+av21BcVB9rNfzgfqhuSjHeZ+2IDVGyt5X9cUMBEKu
         /C94uCvlKh6ZEQVrRRQlqdRIX8mZT9rj56En7DBJfrrp7BNM0TiELZLzfm2jD1ZXNlJ2
         WPhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Fn+otqma;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/OuASCnknQSSpMyAX5ALxD25J6vcW5LJdX1kpLOoGlw=;
        b=UlRYlii5A09wk9W956rshz/kMEOReL+Uz08/5gZZ/b4exMLOwmVXFHzo8bKjzz6IP/
         eBVV1ZGOl6PkFFWdbV3U+F/3zHoiBW1xRIVcDuYKiHEXERzRjEHCltytyMtCCy5RiKUm
         d2sahljhm4/nbh0i/TqZB0fxl+SqbBDFCTpBfSWS6Y38B5oNW98mVXQShKzIIhQjuuMg
         TltIOwG+wynducS5hvbfY2uQJaXbGVqvwNT0QtSfH2CWK0K/TqHHL1GH0EgFvN0chw6s
         G2bcQzTNE4yXaOYTXpqbtSt2tXCsRd9JTGrf1aL1BlwwNT/F5CpAYoWOy+wsd45g5SBJ
         6xrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/OuASCnknQSSpMyAX5ALxD25J6vcW5LJdX1kpLOoGlw=;
        b=Ns42OEXgSnXA5QLBVC+lzCf+90gmrG0ZZcr7RH90ANrbfaOjAL6LJSzqFO8N4QNmBp
         I8w+Rr/jFC48tpSsqjMZ0K22FgtVtpmxXcKEyNIIc0fAT6xnR8YSz3nUU6TZbtHalGLs
         zSFso3tAh0uwwhq09BhLjQ/RGhE3Ddz2nig6O5X6CFW8z8uOQEvlHASA+7elVhwnm+72
         m/J0Mnsgj0B1S4ICkHIWgkNf8IIgu169wsrNrIx3HO66KtItFzfCaAEGxLy/PbJmpuwa
         LvG9EGVMyf26X8RnijnLekvP2BO/LQCEUWYJGita/2uvSMBmQU1IBSUir0oVDCzFK8cT
         w9lg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVSBl8LUPc1+7fZK3L+JG2PoTytWOalF6j6AM/fWaqaAeQhyVS5
	QepLcpnYaJ0O71FdmsK7es0=
X-Google-Smtp-Source: APXvYqxSW4eliXwQGBH5/W69Tgad1J3fYCOPoJVZ8grnKxRtJx5F0yrtMmlNNiFmZbcYxEoeAa8ohg==
X-Received: by 2002:a17:90a:8043:: with SMTP id e3mr34935433pjw.24.1579097579113;
        Wed, 15 Jan 2020 06:12:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c5c:: with SMTP id 28ls5240082pgm.12.gmail; Wed, 15 Jan
 2020 06:12:58 -0800 (PST)
X-Received: by 2002:a63:6507:: with SMTP id z7mr34314079pgb.322.1579097578584;
        Wed, 15 Jan 2020 06:12:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579097578; cv=none;
        d=google.com; s=arc-20160816;
        b=TYcKnVRlSTmO5B/NrWLfHh+aaQGhVvi2djTAFL2k0/9nP+1vev9f0/puUANOKWHBig
         s1qpC/03MxLTMLcFoSCEU86FOw9D0r7AocNYuBKaf39VFcCL29nMAHLOXrJfQIuBXQFU
         2Ro5miO9mIPHZHs4fFXWtzGILQyN0MkTaVNz8i5Khx4AKy0saF/OVU8Zx8JJCs0LlEws
         hTdBDQxCzkYoyh3fQBeJtzrYGp8kZIAOaaJmhTSvJAUn9qcrpECjakO6YHcnMTAqAkVi
         PrS7Phc0+1SOoLcKse7Lt6K2YH8Ypx4z9GsXuC6haM8LT5WxehnQTe/Xe4BOq4gKJ/Qj
         D3WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :cc:to:from:subject:dkim-signature;
        bh=fwhgoWtbAiy+btv+Gy/KS2Yw6hHSnABKSnGlDo7dO3Y=;
        b=U10A8JCxhmCw4efn9o/k/hT6I2OZ9VJ9pDYgDfRrMv2T07JAB2I5YxyUHp2iB6nw3a
         ZedEvX55uiT5oJaN8Q7iW0wYJQtF2/9ypU9Uavaq2SRVqjej67kAdYrsIuaDR37BSoUK
         ssou2KT7ykPaUdEBAH4TevrAfiE6Js5BSKFa+oVlygIPBf+Raa/Vvuj5e5uCq0Embfuw
         nh5xX0iu3DLLM7cGo74rTW3dkRWXZT6CUvTUEz34/47/X+/itsgEx9/St79SI5UH4bZA
         Z88R9jItwmP+A3TH+4IygHUZVqTkFH+Foi/sZa5AwoV1wsviRWOriZomCjF+f6iJBRqc
         3EMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Fn+otqma;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id s12si700586pjo.0.2020.01.15.06.12.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 06:12:58 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-269-_xTqRwRaMaaJ5XW8xyPNPA-1; Wed, 15 Jan 2020 09:12:54 -0500
Received: by mail-lj1-f198.google.com with SMTP id y15so4177653lji.1
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 06:12:53 -0800 (PST)
X-Received: by 2002:a2e:9a11:: with SMTP id o17mr1896832lji.256.1579097572421;
        Wed, 15 Jan 2020 06:12:52 -0800 (PST)
X-Received: by 2002:a2e:9a11:: with SMTP id o17mr1896791lji.256.1579097572053;
        Wed, 15 Jan 2020 06:12:52 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id u25sm8948959lfk.46.2020.01.15.06.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 06:12:50 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id C96A71804D6; Wed, 15 Jan 2020 15:12:48 +0100 (CET)
Subject: [PATCH bpf-next v2 00/10] tools: Use consistent libbpf include paths
 everywhere
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Alexei Starovoitov <ast@kernel.org>
Cc: Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, bpf@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com
Date: Wed, 15 Jan 2020 15:12:48 +0100
Message-ID: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: _xTqRwRaMaaJ5XW8xyPNPA-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Fn+otqma;
       spf=pass (google.com: domain of toke@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
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

The recent commit 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h ar=
e
taken from selftests dir") broke compilation against libbpf if it is instal=
led
on the system, and $INCLUDEDIR/bpf is not in the include path.

Since having the bpf/ subdir of $INCLUDEDIR in the include path has never b=
een a
requirement for building against libbpf before, this needs to be fixed. One
option is to just revert the offending commit and figure out a different wa=
y to
achieve what it aims for. However, this series takes a different approach:
Changing all in-tree users of libbpf to consistently use a bpf/ prefix in
#include directives for header files from libbpf.

This turns out to be a somewhat invasive change in the number of files touc=
hed;
however, the actual changes to files are fairly trivial (most of them are s=
imply
made with 'sed'). Also, this approach has the advantage that it makes exter=
nal
and internal users consistent with each other, and ensures no future change=
s
breaks things in the same way as the commit referenced above.

The series is split to make the change for one tool subdir at a time, while
trying not to break the build along the way. It is structured like this:

- Patch 1-2: Trivial fixes to Makefiles for issues I discovered while chang=
ing
  the include paths.

- Patch 3-7: Change the include directives to use the bpf/ prefix, and upda=
tes
  Makefiles to make sure tools/lib/ is part of the include path, but withou=
t
  removing tools/lib/bpf

- Patch 8: Change the bpf_helpers file in libbpf itself to use the bpf/ pre=
fix
  when including (the original source of breakage).

- Patch 9-10: Remove tools/lib/bpf from include paths to make sure we don't
  inadvertently re-introduce includes without the bpf/ prefix.

---

Toke H=C3=B8iland-J=C3=B8rgensen (10):
      samples/bpf: Don't try to remove user's homedir on clean
      tools/bpf/runqslower: Fix override option for VMLINUX_BTF
      tools/runqslower: Use consistent include paths for libbpf
      selftests: Use consistent include paths for libbpf
      bpftool: Use consistent include paths for libbpf
      perf: Use consistent include paths for libbpf
      samples/bpf: Use consistent include paths for libbpf
      libbpf: Fix include of bpf_helpers.h when libbpf is installed on syst=
em
      selftests: Remove tools/lib/bpf from include path
      tools/runqslower: Remove tools/lib/bpf from include path


 samples/bpf/Makefile                               |    5 ++---
 samples/bpf/cpustat_kern.c                         |    2 +-
 samples/bpf/fds_example.c                          |    2 +-
 samples/bpf/hbm.c                                  |    4 ++--
 samples/bpf/hbm_kern.h                             |    4 ++--
 samples/bpf/ibumad_kern.c                          |    2 +-
 samples/bpf/ibumad_user.c                          |    2 +-
 samples/bpf/lathist_kern.c                         |    2 +-
 samples/bpf/lwt_len_hist_kern.c                    |    2 +-
 samples/bpf/map_perf_test_kern.c                   |    4 ++--
 samples/bpf/offwaketime_kern.c                     |    4 ++--
 samples/bpf/offwaketime_user.c                     |    2 +-
 samples/bpf/parse_ldabs.c                          |    2 +-
 samples/bpf/parse_simple.c                         |    2 +-
 samples/bpf/parse_varlen.c                         |    2 +-
 samples/bpf/sampleip_kern.c                        |    4 ++--
 samples/bpf/sampleip_user.c                        |    2 +-
 samples/bpf/sock_flags_kern.c                      |    2 +-
 samples/bpf/sockex1_kern.c                         |    2 +-
 samples/bpf/sockex1_user.c                         |    2 +-
 samples/bpf/sockex2_kern.c                         |    2 +-
 samples/bpf/sockex2_user.c                         |    2 +-
 samples/bpf/sockex3_kern.c                         |    2 +-
 samples/bpf/spintest_kern.c                        |    4 ++--
 samples/bpf/spintest_user.c                        |    2 +-
 samples/bpf/syscall_tp_kern.c                      |    2 +-
 samples/bpf/task_fd_query_kern.c                   |    2 +-
 samples/bpf/task_fd_query_user.c                   |    2 +-
 samples/bpf/tc_l2_redirect_kern.c                  |    2 +-
 samples/bpf/tcbpf1_kern.c                          |    2 +-
 samples/bpf/tcp_basertt_kern.c                     |    4 ++--
 samples/bpf/tcp_bufs_kern.c                        |    4 ++--
 samples/bpf/tcp_clamp_kern.c                       |    4 ++--
 samples/bpf/tcp_cong_kern.c                        |    4 ++--
 samples/bpf/tcp_dumpstats_kern.c                   |    4 ++--
 samples/bpf/tcp_iw_kern.c                          |    4 ++--
 samples/bpf/tcp_rwnd_kern.c                        |    4 ++--
 samples/bpf/tcp_synrto_kern.c                      |    4 ++--
 samples/bpf/tcp_tos_reflect_kern.c                 |    4 ++--
 samples/bpf/test_cgrp2_tc_kern.c                   |    2 +-
 samples/bpf/test_current_task_under_cgroup_kern.c  |    2 +-
 samples/bpf/test_lwt_bpf.c                         |    2 +-
 samples/bpf/test_map_in_map_kern.c                 |    4 ++--
 samples/bpf/test_overhead_kprobe_kern.c            |    4 ++--
 samples/bpf/test_overhead_raw_tp_kern.c            |    2 +-
 samples/bpf/test_overhead_tp_kern.c                |    2 +-
 samples/bpf/test_probe_write_user_kern.c           |    4 ++--
 samples/bpf/trace_event_kern.c                     |    4 ++--
 samples/bpf/trace_event_user.c                     |    2 +-
 samples/bpf/trace_output_kern.c                    |    2 +-
 samples/bpf/trace_output_user.c                    |    2 +-
 samples/bpf/tracex1_kern.c                         |    4 ++--
 samples/bpf/tracex2_kern.c                         |    4 ++--
 samples/bpf/tracex3_kern.c                         |    4 ++--
 samples/bpf/tracex4_kern.c                         |    4 ++--
 samples/bpf/tracex5_kern.c                         |    4 ++--
 samples/bpf/tracex6_kern.c                         |    2 +-
 samples/bpf/tracex7_kern.c                         |    2 +-
 samples/bpf/xdp1_kern.c                            |    2 +-
 samples/bpf/xdp1_user.c                            |    4 ++--
 samples/bpf/xdp2_kern.c                            |    2 +-
 samples/bpf/xdp2skb_meta_kern.c                    |    2 +-
 samples/bpf/xdp_adjust_tail_kern.c                 |    2 +-
 samples/bpf/xdp_adjust_tail_user.c                 |    4 ++--
 samples/bpf/xdp_fwd_kern.c                         |    2 +-
 samples/bpf/xdp_fwd_user.c                         |    2 +-
 samples/bpf/xdp_monitor_kern.c                     |    2 +-
 samples/bpf/xdp_redirect_cpu_kern.c                |    2 +-
 samples/bpf/xdp_redirect_cpu_user.c                |    2 +-
 samples/bpf/xdp_redirect_kern.c                    |    2 +-
 samples/bpf/xdp_redirect_map_kern.c                |    2 +-
 samples/bpf/xdp_redirect_map_user.c                |    2 +-
 samples/bpf/xdp_redirect_user.c                    |    2 +-
 samples/bpf/xdp_router_ipv4_kern.c                 |    2 +-
 samples/bpf/xdp_router_ipv4_user.c                 |    2 +-
 samples/bpf/xdp_rxq_info_kern.c                    |    2 +-
 samples/bpf/xdp_rxq_info_user.c                    |    4 ++--
 samples/bpf/xdp_sample_pkts_kern.c                 |    2 +-
 samples/bpf/xdp_sample_pkts_user.c                 |    2 +-
 samples/bpf/xdp_tx_iptunnel_kern.c                 |    2 +-
 samples/bpf/xdp_tx_iptunnel_user.c                 |    2 +-
 samples/bpf/xdpsock_kern.c                         |    2 +-
 samples/bpf/xdpsock_user.c                         |    6 +++---
 tools/bpf/bpftool/Documentation/bpftool-gen.rst    |    2 +-
 tools/bpf/bpftool/Makefile                         |    2 +-
 tools/bpf/bpftool/btf.c                            |    8 ++++----
 tools/bpf/bpftool/btf_dumper.c                     |    2 +-
 tools/bpf/bpftool/cgroup.c                         |    2 +-
 tools/bpf/bpftool/common.c                         |    4 ++--
 tools/bpf/bpftool/feature.c                        |    4 ++--
 tools/bpf/bpftool/gen.c                            |   10 +++++-----
 tools/bpf/bpftool/jit_disasm.c                     |    2 +-
 tools/bpf/bpftool/main.c                           |    4 ++--
 tools/bpf/bpftool/map.c                            |    4 ++--
 tools/bpf/bpftool/map_perf_ring.c                  |    4 ++--
 tools/bpf/bpftool/net.c                            |    8 ++++----
 tools/bpf/bpftool/netlink_dumper.c                 |    4 ++--
 tools/bpf/bpftool/perf.c                           |    2 +-
 tools/bpf/bpftool/prog.c                           |    6 +++---
 tools/bpf/bpftool/xlated_dumper.c                  |    2 +-
 tools/bpf/runqslower/Makefile                      |   21 ++++++++++++----=
----
 tools/bpf/runqslower/runqslower.bpf.c              |    2 +-
 tools/bpf/runqslower/runqslower.c                  |    4 ++--
 tools/lib/bpf/bpf_helpers.h                        |    2 +-
 tools/perf/examples/bpf/5sec.c                     |    2 +-
 tools/perf/examples/bpf/empty.c                    |    2 +-
 tools/perf/examples/bpf/sys_enter_openat.c         |    2 +-
 tools/perf/include/bpf/pid_filter.h                |    2 +-
 tools/perf/include/bpf/stdio.h                     |    2 +-
 tools/perf/include/bpf/unistd.h                    |    2 +-
 tools/testing/selftests/bpf/.gitignore             |    3 ++-
 tools/testing/selftests/bpf/Makefile               |   16 ++++++++-------
 tools/testing/selftests/bpf/bpf_tcp_helpers.h      |    4 ++--
 tools/testing/selftests/bpf/bpf_trace_helpers.h    |    2 +-
 tools/testing/selftests/bpf/bpf_util.h             |    2 +-
 tools/testing/selftests/bpf/prog_tests/cpu_mask.c  |    2 +-
 .../testing/selftests/bpf/prog_tests/perf_buffer.c |    2 +-
 tools/testing/selftests/bpf/progs/bpf_dctcp.c      |    2 +-
 tools/testing/selftests/bpf/progs/bpf_flow.c       |    4 ++--
 tools/testing/selftests/bpf/progs/connect4_prog.c  |    4 ++--
 tools/testing/selftests/bpf/progs/connect6_prog.c  |    4 ++--
 tools/testing/selftests/bpf/progs/dev_cgroup.c     |    2 +-
 tools/testing/selftests/bpf/progs/fentry_test.c    |    2 +-
 tools/testing/selftests/bpf/progs/fexit_bpf2bpf.c  |    2 +-
 .../selftests/bpf/progs/fexit_bpf2bpf_simple.c     |    2 +-
 tools/testing/selftests/bpf/progs/fexit_test.c     |    2 +-
 .../selftests/bpf/progs/get_cgroup_id_kern.c       |    2 +-
 tools/testing/selftests/bpf/progs/kfree_skb.c      |    4 ++--
 tools/testing/selftests/bpf/progs/loop1.c          |    4 ++--
 tools/testing/selftests/bpf/progs/loop2.c          |    4 ++--
 tools/testing/selftests/bpf/progs/loop3.c          |    4 ++--
 tools/testing/selftests/bpf/progs/loop4.c          |    2 +-
 tools/testing/selftests/bpf/progs/loop5.c          |    2 +-
 tools/testing/selftests/bpf/progs/netcnt_prog.c    |    2 +-
 tools/testing/selftests/bpf/progs/pyperf.h         |    2 +-
 .../testing/selftests/bpf/progs/sample_map_ret0.c  |    2 +-
 tools/testing/selftests/bpf/progs/sendmsg4_prog.c  |    4 ++--
 tools/testing/selftests/bpf/progs/sendmsg6_prog.c  |    4 ++--
 .../selftests/bpf/progs/socket_cookie_prog.c       |    4 ++--
 .../selftests/bpf/progs/sockmap_parse_prog.c       |    4 ++--
 .../selftests/bpf/progs/sockmap_tcp_msg_prog.c     |    4 ++--
 .../selftests/bpf/progs/sockmap_verdict_prog.c     |    4 ++--
 .../testing/selftests/bpf/progs/sockopt_inherit.c  |    2 +-
 tools/testing/selftests/bpf/progs/sockopt_multi.c  |    2 +-
 tools/testing/selftests/bpf/progs/sockopt_sk.c     |    2 +-
 tools/testing/selftests/bpf/progs/strobemeta.h     |    2 +-
 tools/testing/selftests/bpf/progs/tailcall1.c      |    2 +-
 tools/testing/selftests/bpf/progs/tailcall2.c      |    2 +-
 tools/testing/selftests/bpf/progs/tailcall3.c      |    2 +-
 tools/testing/selftests/bpf/progs/tailcall4.c      |    2 +-
 tools/testing/selftests/bpf/progs/tailcall5.c      |    2 +-
 tools/testing/selftests/bpf/progs/tcp_rtt.c        |    2 +-
 .../testing/selftests/bpf/progs/test_adjust_tail.c |    2 +-
 .../selftests/bpf/progs/test_attach_probe.c        |    2 +-
 tools/testing/selftests/bpf/progs/test_btf_haskv.c |    2 +-
 tools/testing/selftests/bpf/progs/test_btf_newkv.c |    2 +-
 tools/testing/selftests/bpf/progs/test_btf_nokv.c  |    2 +-
 .../testing/selftests/bpf/progs/test_core_extern.c |    2 +-
 .../selftests/bpf/progs/test_core_reloc_arrays.c   |    4 ++--
 .../bpf/progs/test_core_reloc_bitfields_direct.c   |    4 ++--
 .../bpf/progs/test_core_reloc_bitfields_probed.c   |    4 ++--
 .../bpf/progs/test_core_reloc_existence.c          |    4 ++--
 .../selftests/bpf/progs/test_core_reloc_flavors.c  |    4 ++--
 .../selftests/bpf/progs/test_core_reloc_ints.c     |    4 ++--
 .../selftests/bpf/progs/test_core_reloc_kernel.c   |    4 ++--
 .../selftests/bpf/progs/test_core_reloc_misc.c     |    4 ++--
 .../selftests/bpf/progs/test_core_reloc_mods.c     |    4 ++--
 .../selftests/bpf/progs/test_core_reloc_nesting.c  |    4 ++--
 .../bpf/progs/test_core_reloc_primitives.c         |    4 ++--
 .../bpf/progs/test_core_reloc_ptr_as_arr.c         |    4 ++--
 .../selftests/bpf/progs/test_core_reloc_size.c     |    4 ++--
 .../selftests/bpf/progs/test_get_stack_rawtp.c     |    2 +-
 .../testing/selftests/bpf/progs/test_global_data.c |    2 +-
 .../selftests/bpf/progs/test_global_func1.c        |    2 +-
 .../selftests/bpf/progs/test_global_func3.c        |    2 +-
 .../selftests/bpf/progs/test_global_func5.c        |    2 +-
 .../selftests/bpf/progs/test_global_func6.c        |    2 +-
 .../selftests/bpf/progs/test_global_func7.c        |    2 +-
 tools/testing/selftests/bpf/progs/test_l4lb.c      |    4 ++--
 .../selftests/bpf/progs/test_l4lb_noinline.c       |    4 ++--
 .../selftests/bpf/progs/test_lirc_mode2_kern.c     |    2 +-
 .../selftests/bpf/progs/test_lwt_ip_encap.c        |    4 ++--
 .../selftests/bpf/progs/test_lwt_seg6local.c       |    4 ++--
 .../testing/selftests/bpf/progs/test_map_in_map.c  |    2 +-
 tools/testing/selftests/bpf/progs/test_map_lock.c  |    2 +-
 tools/testing/selftests/bpf/progs/test_mmap.c      |    2 +-
 tools/testing/selftests/bpf/progs/test_obj_id.c    |    2 +-
 tools/testing/selftests/bpf/progs/test_overhead.c  |    4 ++--
 .../testing/selftests/bpf/progs/test_perf_buffer.c |    2 +-
 tools/testing/selftests/bpf/progs/test_pinning.c   |    2 +-
 .../selftests/bpf/progs/test_pinning_invalid.c     |    2 +-
 .../testing/selftests/bpf/progs/test_pkt_access.c  |    4 ++--
 .../selftests/bpf/progs/test_pkt_md_access.c       |    2 +-
 .../testing/selftests/bpf/progs/test_probe_user.c  |    4 ++--
 .../selftests/bpf/progs/test_queue_stack_map.h     |    2 +-
 .../testing/selftests/bpf/progs/test_rdonly_maps.c |    2 +-
 tools/testing/selftests/bpf/progs/test_seg6_loop.c |    4 ++--
 .../bpf/progs/test_select_reuseport_kern.c         |    4 ++--
 .../selftests/bpf/progs/test_send_signal_kern.c    |    2 +-
 .../selftests/bpf/progs/test_sk_lookup_kern.c      |    4 ++--
 .../selftests/bpf/progs/test_skb_cgroup_id_kern.c  |    2 +-
 tools/testing/selftests/bpf/progs/test_skb_ctx.c   |    2 +-
 tools/testing/selftests/bpf/progs/test_skeleton.c  |    2 +-
 .../selftests/bpf/progs/test_sock_fields_kern.c    |    4 ++--
 tools/testing/selftests/bpf/progs/test_spin_lock.c |    2 +-
 .../selftests/bpf/progs/test_stacktrace_build_id.c |    2 +-
 .../selftests/bpf/progs/test_stacktrace_map.c      |    2 +-
 .../selftests/bpf/progs/test_sysctl_loop1.c        |    2 +-
 .../selftests/bpf/progs/test_sysctl_loop2.c        |    2 +-
 .../testing/selftests/bpf/progs/test_sysctl_prog.c |    2 +-
 tools/testing/selftests/bpf/progs/test_tc_edt.c    |    4 ++--
 tools/testing/selftests/bpf/progs/test_tc_tunnel.c |    4 ++--
 .../bpf/progs/test_tcp_check_syncookie_kern.c      |    4 ++--
 .../testing/selftests/bpf/progs/test_tcp_estats.c  |    2 +-
 .../testing/selftests/bpf/progs/test_tcpbpf_kern.c |    4 ++--
 .../selftests/bpf/progs/test_tcpnotify_kern.c      |    4 ++--
 .../testing/selftests/bpf/progs/test_tracepoint.c  |    2 +-
 .../testing/selftests/bpf/progs/test_tunnel_kern.c |    4 ++--
 .../selftests/bpf/progs/test_verif_scale1.c        |    2 +-
 .../selftests/bpf/progs/test_verif_scale2.c        |    2 +-
 .../selftests/bpf/progs/test_verif_scale3.c        |    2 +-
 tools/testing/selftests/bpf/progs/test_xdp.c       |    4 ++--
 tools/testing/selftests/bpf/progs/test_xdp_loop.c  |    4 ++--
 tools/testing/selftests/bpf/progs/test_xdp_meta.c  |    2 +-
 .../selftests/bpf/progs/test_xdp_noinline.c        |    4 ++--
 .../selftests/bpf/progs/test_xdp_redirect.c        |    2 +-
 tools/testing/selftests/bpf/progs/test_xdp_vlan.c  |    4 ++--
 tools/testing/selftests/bpf/progs/xdp_dummy.c      |    2 +-
 .../testing/selftests/bpf/progs/xdp_redirect_map.c |    2 +-
 tools/testing/selftests/bpf/progs/xdp_tx.c         |    2 +-
 tools/testing/selftests/bpf/progs/xdping_kern.c    |    4 ++--
 tools/testing/selftests/bpf/test_cpp.cpp           |    6 +++---
 tools/testing/selftests/bpf/test_hashmap.c         |    2 +-
 tools/testing/selftests/bpf/test_progs.h           |    2 +-
 tools/testing/selftests/bpf/test_sock.c            |    2 +-
 tools/testing/selftests/bpf/test_sockmap_kern.h    |    4 ++--
 tools/testing/selftests/bpf/test_sysctl.c          |    2 +-
 tools/testing/selftests/bpf/trace_helpers.h        |    2 +-
 238 files changed, 359 insertions(+), 354 deletions(-)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157909756858.1192265.6657542187065456112.stgit%40toke.dk.
