Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBC6HQHYQKGQEKZZMNPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC21413DB5E
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:22:20 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id w6sf15871288ill.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 05:22:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579180939; cv=pass;
        d=google.com; s=arc-20160816;
        b=KxGK3rAgYARoxQy1BxQRLeyEtAq9AAl6Dhd++S8Zhzi4nq584JV0AAmY/SDiTmju2+
         HDUn56HWllTQqExnoWaGuH/paJYwzcKnWfy0SOJ4fFVTaf7jiyFRb7kksIpFnrCn+yMS
         YuE27a9Z480luOx4W/KB4iK4Hbfv/7QgaYcjyECt2VKh7LF9+fo3axEqfYxp9i8gQ4AC
         9UqaqZJPTBeVUUkQL13IunWAER0jYvyjXRbqJZxgDFdzLxROREcEL80SKyeCnqhF5xrt
         aSh5SJLFJ1Ws2UJk1FQQKR8cWFIIv9Y2RFqnCiN/DWoeMIYH+NSiTQygGNxgyaQJuipD
         qDLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:message-id:date:cc:to:from:subject:sender
         :dkim-signature;
        bh=yYZeAoBeqyPRLtvz5eus3xVDG+9/dRaG7iUoD57Qz3k=;
        b=jdOnQu7ktGPHgHA5KAFXDZ6u1MbPZHH6ygo47Y8112atURkvJP3NsMU1xr6tNDuLtZ
         SsOzVN+xAvSwyDQTt19ilz15tnngaDNA+lm2zOs3fcefntnYtlrvzQLVwKudcdlOg6Ve
         GH/JdY/hi7HRB0yLKmkXSMd9jaijNTHGOztjmcjTxJZKZDOCve1Q+4zI1da/d+CLh0LV
         ib7uFxXzQjXGwY6Z8czJ68zcIuqlBgbbbJuCu66GvFB7F/5mwhOr1Nn3DVjlcn25ccdR
         7OwLyDud91AXIbBvn2MUipEcN66yoIEappA0K4k0+3dw/FlmmcnQSOz0BvsNvJSex2MR
         C2DA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EggDjPvM;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yYZeAoBeqyPRLtvz5eus3xVDG+9/dRaG7iUoD57Qz3k=;
        b=nGBuctzYMh7Q2QiYfwedlM5xaKKnHBzqb38Zwxjm3w701GPw2W5BvVG+8iQAdXvmmW
         7cdaL3cPynoQmpE7QIFWJsrGom5kBPoMv8zlkYISme/6JeZcRx8KUnz70CtEDXk+end2
         NDxDmkXREMVzNEjxURL/qw2S09B/T518W11lv0OYEvqXQQR9o5R/NuriFVCei6xJne+Q
         QPb66HeRfsCMiK0OKqYzM3G+MrnATA4NOg6/AQj590aTtTMGIdRMdrfSC3/ecdKM5N6O
         HAiHPz71M5d1yvTcHFVTUF1u1ZRsmXWVRMa61PasKi1OZPmtMaNLGIcD3P+v2xpZoGdT
         8+nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yYZeAoBeqyPRLtvz5eus3xVDG+9/dRaG7iUoD57Qz3k=;
        b=cjp0vVfj58ilP3T4cj1aVXE/4lq/qjd/u0kaEe7bUODBLqzUcZI8kjnhg5OLWFUpnL
         Rlh99F9ORmycPEsEztvCxufoxTFdxuTraKhDuRBhRJ86Ld5LXLpF3PBKW+oilxOloPet
         Yl2AiXON5cSsHIu65iy5py4ena4mtAMhpF1GYNtlZEKa7fKOWfyRwYtUkME6HDQV1LBv
         bxLZX4cpefxShXtFD5epF59Sja6/weOYrlurCvaDfiGe+31jhvBj3bYfghGZvuJEWY+G
         3J6YTMn2os6+6bFnE7GvAKy3Slb+U/+P2dXP5iJK9aw34qHUEcj/ObE6CTr9te1VGnA4
         4LQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVyiyiQastxzSG4slSqr6tROnKHwWkX1ZIycHVa1xDCILcvWWRT
	SyOMxj8lCrRGhVWigyTVMaU=
X-Google-Smtp-Source: APXvYqyKG/ObUmW5o+mIF84S9LUrk9Nx+EECpndKhvb7krBJdEEotLQE849duWq8/84tCkl1pwmXMw==
X-Received: by 2002:a6b:2b41:: with SMTP id r62mr15373885ior.189.1579180939320;
        Thu, 16 Jan 2020 05:22:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:90f:: with SMTP id t15ls3522582ioi.15.gmail; Thu, 16 Jan
 2020 05:22:19 -0800 (PST)
X-Received: by 2002:a6b:3786:: with SMTP id e128mr1920664ioa.77.1579180938945;
        Thu, 16 Jan 2020 05:22:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579180938; cv=none;
        d=google.com; s=arc-20160816;
        b=sye5q09JBZUEvxu0UjfRmh2+aKWSqTwz477JDAlXgeOSryipNTh4qWhuF/pBuWZLx6
         GOJAH8N2uQ/HXh3DZmOexh0vTqKqDMcvZExA7Mjrn6Bx4ZYfYO0ZYBZB1BX7AmObS597
         sGsJZEChHEohatd1hA8RYre0zyLL8VJ1Mgw73pdUnM0Oz5nsXx7XO1XwU858ONGEzV7l
         sdru5EOJXA7z25AavhcdWCaZe4isTOhC3CNLffB3q3LtyeG0UrceSyc6VoT1EIoRNCwC
         2uqmYXsxfWbGsLuoXioypWtZ58xVRQIZnRJbcOOgDCmn/TQofB1LwGR1QPxNNbLzXmbR
         NruQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :cc:to:from:subject:dkim-signature;
        bh=lN8pNEx1UdCOK+TLnlD+tKuCpahEHH1FqnSwfe10rNc=;
        b=dOu9yFrGNJdg9PT1ajFBBXIE3PNNXUk3TFqrTrXnFe6250pEEKXst5MEwiC6a86GWc
         jh/ufssF2RTgAUxc68yDIAoNqSSLzINlSx/wpxMj7Y3Zn2uXJMZ57KpFAHnPl6TKTxtO
         TxdC1tBtMy0eH4YiGfSAexC3N5hW21NHlCgrccYECpsWgZ4z7GFNu4Fvlg5vMFuk3gIN
         pjx3guutRSXNbv36tWKs5F08fnBq/SllDXPEdlXSZnlaoJCoK1IljJoYBMjUJ1whXPAt
         vHcJ+zK27APrgpOBKQTiU8HBbCAZJTizVpLxWNFCeucq6acn44In1E4ocARZd2t2LNU3
         0Lvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EggDjPvM;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id v82si1063442ili.0.2020.01.16.05.22.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 05:22:18 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-370-48ftFz52NxSeOHQzuLKmTw-1; Thu, 16 Jan 2020 08:22:16 -0500
Received: by mail-lj1-f199.google.com with SMTP id j23so5149175lji.23
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 05:22:16 -0800 (PST)
X-Received: by 2002:ac2:48bc:: with SMTP id u28mr2387977lfg.81.1579180935148;
        Thu, 16 Jan 2020 05:22:15 -0800 (PST)
X-Received: by 2002:ac2:48bc:: with SMTP id u28mr2387961lfg.81.1579180934743;
        Thu, 16 Jan 2020 05:22:14 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id r12sm10668431ljh.105.2020.01.16.05.22.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 05:22:13 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id C0B6F1804D6; Thu, 16 Jan 2020 14:22:11 +0100 (CET)
Subject: [PATCH bpf-next v3 00/11] tools: Use consistent libbpf include paths
 everywhere
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Alexei Starovoitov <ast@kernel.org>
Cc: Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <brouer@redhat.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, bpf@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com
Date: Thu, 16 Jan 2020 14:22:11 +0100
Message-ID: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: 48ftFz52NxSeOHQzuLKmTw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=EggDjPvM;
       spf=pass (google.com: domain of toke@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
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

- Patch 1-3: Trivial fixes to Makefiles for issues I discovered while chang=
ing
  the include paths.

- Patch 4-8: Change the include directives to use the bpf/ prefix, and upda=
tes
  Makefiles to make sure tools/lib/ is part of the include path, but withou=
t
  removing tools/lib/bpf

- Patch 9-10: Remove tools/lib/bpf from include paths to make sure we don't
  inadvertently re-introduce includes without the bpf/ prefix.

- Patch 11: Change the bpf_helpers.h file in libbpf itself back to using a =
quoted
  include for bpf_helper_defs.h (the original source of breakage).

Changelog:

v3:
  - Don't add the kernel build dir to the runqslower Makefile, pass it in f=
rom
    selftests instead.
  - Use libbpf's 'make install_headers' in selftests instead of trying to
    generate bpf_helper_defs.h in-place (to also work on read-only filesyst=
ems).
  - Use a scratch builddir for both libbpf and bpftool when building in sel=
ftests.
  - Revert bpf_helpers.h to quoted include instead of angled include with a=
 bpf/
    prefix.
  - Fix a few style nits from Andrii

v2:
  - Do a full cleanup of libbpf includes instead of just changing the
    bpf_helper_defs.h include.

---

Toke H=C3=B8iland-J=C3=B8rgensen (11):
      samples/bpf: Don't try to remove user's homedir on clean
      tools/bpf/runqslower: Fix override option for VMLINUX_BTF
      selftests: Pass VMLINUX_BTF to runqslower Makefile
      tools/runqslower: Use consistent include paths for libbpf
      selftests: Use consistent include paths for libbpf
      bpftool: Use consistent include paths for libbpf
      perf: Use consistent include paths for libbpf
      samples/bpf: Use consistent include paths for libbpf
      selftests: Remove tools/lib/bpf from include path
      tools/runqslower: Remove tools/lib/bpf from include path
      libbpf: Fix include of bpf_helpers.h when libbpf is installed on syst=
em


 samples/bpf/Makefile                               |    5 +-
 samples/bpf/cpustat_kern.c                         |    2 -
 samples/bpf/fds_example.c                          |    2 -
 samples/bpf/hbm.c                                  |    4 +-
 samples/bpf/hbm_kern.h                             |    4 +-
 samples/bpf/ibumad_kern.c                          |    2 -
 samples/bpf/ibumad_user.c                          |    2 -
 samples/bpf/lathist_kern.c                         |    2 -
 samples/bpf/lwt_len_hist_kern.c                    |    2 -
 samples/bpf/map_perf_test_kern.c                   |    4 +-
 samples/bpf/offwaketime_kern.c                     |    4 +-
 samples/bpf/offwaketime_user.c                     |    2 -
 samples/bpf/parse_ldabs.c                          |    2 -
 samples/bpf/parse_simple.c                         |    2 -
 samples/bpf/parse_varlen.c                         |    2 -
 samples/bpf/sampleip_kern.c                        |    4 +-
 samples/bpf/sampleip_user.c                        |    2 -
 samples/bpf/sock_flags_kern.c                      |    2 -
 samples/bpf/sockex1_kern.c                         |    2 -
 samples/bpf/sockex1_user.c                         |    2 -
 samples/bpf/sockex2_kern.c                         |    2 -
 samples/bpf/sockex2_user.c                         |    2 -
 samples/bpf/sockex3_kern.c                         |    2 -
 samples/bpf/spintest_kern.c                        |    4 +-
 samples/bpf/spintest_user.c                        |    2 -
 samples/bpf/syscall_tp_kern.c                      |    2 -
 samples/bpf/task_fd_query_kern.c                   |    2 -
 samples/bpf/task_fd_query_user.c                   |    2 -
 samples/bpf/tc_l2_redirect_kern.c                  |    2 -
 samples/bpf/tcbpf1_kern.c                          |    2 -
 samples/bpf/tcp_basertt_kern.c                     |    4 +-
 samples/bpf/tcp_bufs_kern.c                        |    4 +-
 samples/bpf/tcp_clamp_kern.c                       |    4 +-
 samples/bpf/tcp_cong_kern.c                        |    4 +-
 samples/bpf/tcp_dumpstats_kern.c                   |    4 +-
 samples/bpf/tcp_iw_kern.c                          |    4 +-
 samples/bpf/tcp_rwnd_kern.c                        |    4 +-
 samples/bpf/tcp_synrto_kern.c                      |    4 +-
 samples/bpf/tcp_tos_reflect_kern.c                 |    4 +-
 samples/bpf/test_cgrp2_tc_kern.c                   |    2 -
 samples/bpf/test_current_task_under_cgroup_kern.c  |    2 -
 samples/bpf/test_lwt_bpf.c                         |    2 -
 samples/bpf/test_map_in_map_kern.c                 |    4 +-
 samples/bpf/test_overhead_kprobe_kern.c            |    4 +-
 samples/bpf/test_overhead_raw_tp_kern.c            |    2 -
 samples/bpf/test_overhead_tp_kern.c                |    2 -
 samples/bpf/test_probe_write_user_kern.c           |    4 +-
 samples/bpf/trace_event_kern.c                     |    4 +-
 samples/bpf/trace_event_user.c                     |    2 -
 samples/bpf/trace_output_kern.c                    |    2 -
 samples/bpf/trace_output_user.c                    |    2 -
 samples/bpf/tracex1_kern.c                         |    4 +-
 samples/bpf/tracex2_kern.c                         |    4 +-
 samples/bpf/tracex3_kern.c                         |    4 +-
 samples/bpf/tracex4_kern.c                         |    4 +-
 samples/bpf/tracex5_kern.c                         |    4 +-
 samples/bpf/tracex6_kern.c                         |    2 -
 samples/bpf/tracex7_kern.c                         |    2 -
 samples/bpf/xdp1_kern.c                            |    2 -
 samples/bpf/xdp1_user.c                            |    4 +-
 samples/bpf/xdp2_kern.c                            |    2 -
 samples/bpf/xdp2skb_meta_kern.c                    |    2 -
 samples/bpf/xdp_adjust_tail_kern.c                 |    2 -
 samples/bpf/xdp_adjust_tail_user.c                 |    4 +-
 samples/bpf/xdp_fwd_kern.c                         |    2 -
 samples/bpf/xdp_fwd_user.c                         |    2 -
 samples/bpf/xdp_monitor_kern.c                     |    2 -
 samples/bpf/xdp_redirect_cpu_kern.c                |    2 -
 samples/bpf/xdp_redirect_cpu_user.c                |    2 -
 samples/bpf/xdp_redirect_kern.c                    |    2 -
 samples/bpf/xdp_redirect_map_kern.c                |    2 -
 samples/bpf/xdp_redirect_map_user.c                |    2 -
 samples/bpf/xdp_redirect_user.c                    |    2 -
 samples/bpf/xdp_router_ipv4_kern.c                 |    2 -
 samples/bpf/xdp_router_ipv4_user.c                 |    2 -
 samples/bpf/xdp_rxq_info_kern.c                    |    2 -
 samples/bpf/xdp_rxq_info_user.c                    |    4 +-
 samples/bpf/xdp_sample_pkts_kern.c                 |    2 -
 samples/bpf/xdp_sample_pkts_user.c                 |    2 -
 samples/bpf/xdp_tx_iptunnel_kern.c                 |    2 -
 samples/bpf/xdp_tx_iptunnel_user.c                 |    2 -
 samples/bpf/xdpsock_kern.c                         |    2 -
 samples/bpf/xdpsock_user.c                         |    6 +-
 tools/bpf/bpftool/Documentation/bpftool-gen.rst    |    2 -
 tools/bpf/bpftool/Makefile                         |    2 -
 tools/bpf/bpftool/btf.c                            |    8 ++-
 tools/bpf/bpftool/btf_dumper.c                     |    2 -
 tools/bpf/bpftool/cgroup.c                         |    2 -
 tools/bpf/bpftool/common.c                         |    4 +-
 tools/bpf/bpftool/feature.c                        |    4 +-
 tools/bpf/bpftool/gen.c                            |   10 ++--
 tools/bpf/bpftool/jit_disasm.c                     |    2 -
 tools/bpf/bpftool/main.c                           |    4 +-
 tools/bpf/bpftool/map.c                            |    4 +-
 tools/bpf/bpftool/map_perf_ring.c                  |    4 +-
 tools/bpf/bpftool/net.c                            |    8 ++-
 tools/bpf/bpftool/netlink_dumper.c                 |    4 +-
 tools/bpf/bpftool/perf.c                           |    2 -
 tools/bpf/bpftool/prog.c                           |    6 +-
 tools/bpf/bpftool/xlated_dumper.c                  |    2 -
 tools/bpf/runqslower/Makefile                      |   23 +++++----
 tools/bpf/runqslower/runqslower.bpf.c              |    2 -
 tools/bpf/runqslower/runqslower.c                  |    4 +-
 tools/lib/bpf/bpf_helpers.h                        |    2 -
 tools/perf/examples/bpf/5sec.c                     |    2 -
 tools/perf/examples/bpf/empty.c                    |    2 -
 tools/perf/examples/bpf/sys_enter_openat.c         |    2 -
 tools/perf/include/bpf/pid_filter.h                |    2 -
 tools/perf/include/bpf/stdio.h                     |    2 -
 tools/perf/include/bpf/unistd.h                    |    2 -
 tools/testing/selftests/bpf/.gitignore             |    1=20
 tools/testing/selftests/bpf/Makefile               |   52 ++++++++++++----=
----
 tools/testing/selftests/bpf/bpf_tcp_helpers.h      |    4 +-
 tools/testing/selftests/bpf/bpf_trace_helpers.h    |    2 -
 tools/testing/selftests/bpf/bpf_util.h             |    2 -
 tools/testing/selftests/bpf/prog_tests/cpu_mask.c  |    2 -
 .../testing/selftests/bpf/prog_tests/perf_buffer.c |    2 -
 tools/testing/selftests/bpf/progs/bpf_dctcp.c      |    2 -
 tools/testing/selftests/bpf/progs/bpf_flow.c       |    4 +-
 tools/testing/selftests/bpf/progs/connect4_prog.c  |    4 +-
 tools/testing/selftests/bpf/progs/connect6_prog.c  |    4 +-
 tools/testing/selftests/bpf/progs/dev_cgroup.c     |    2 -
 tools/testing/selftests/bpf/progs/fentry_test.c    |    2 -
 tools/testing/selftests/bpf/progs/fexit_bpf2bpf.c  |    2 -
 .../selftests/bpf/progs/fexit_bpf2bpf_simple.c     |    2 -
 tools/testing/selftests/bpf/progs/fexit_test.c     |    2 -
 .../selftests/bpf/progs/get_cgroup_id_kern.c       |    2 -
 tools/testing/selftests/bpf/progs/kfree_skb.c      |    4 +-
 tools/testing/selftests/bpf/progs/loop1.c          |    4 +-
 tools/testing/selftests/bpf/progs/loop2.c          |    4 +-
 tools/testing/selftests/bpf/progs/loop3.c          |    4 +-
 tools/testing/selftests/bpf/progs/loop4.c          |    2 -
 tools/testing/selftests/bpf/progs/loop5.c          |    2 -
 tools/testing/selftests/bpf/progs/netcnt_prog.c    |    2 -
 tools/testing/selftests/bpf/progs/pyperf.h         |    2 -
 .../testing/selftests/bpf/progs/sample_map_ret0.c  |    2 -
 tools/testing/selftests/bpf/progs/sendmsg4_prog.c  |    4 +-
 tools/testing/selftests/bpf/progs/sendmsg6_prog.c  |    4 +-
 .../selftests/bpf/progs/socket_cookie_prog.c       |    4 +-
 .../selftests/bpf/progs/sockmap_parse_prog.c       |    4 +-
 .../selftests/bpf/progs/sockmap_tcp_msg_prog.c     |    4 +-
 .../selftests/bpf/progs/sockmap_verdict_prog.c     |    4 +-
 .../testing/selftests/bpf/progs/sockopt_inherit.c  |    2 -
 tools/testing/selftests/bpf/progs/sockopt_multi.c  |    2 -
 tools/testing/selftests/bpf/progs/sockopt_sk.c     |    2 -
 tools/testing/selftests/bpf/progs/strobemeta.h     |    2 -
 tools/testing/selftests/bpf/progs/tailcall1.c      |    2 -
 tools/testing/selftests/bpf/progs/tailcall2.c      |    2 -
 tools/testing/selftests/bpf/progs/tailcall3.c      |    2 -
 tools/testing/selftests/bpf/progs/tailcall4.c      |    2 -
 tools/testing/selftests/bpf/progs/tailcall5.c      |    2 -
 tools/testing/selftests/bpf/progs/tcp_rtt.c        |    2 -
 .../testing/selftests/bpf/progs/test_adjust_tail.c |    2 -
 .../selftests/bpf/progs/test_attach_probe.c        |    2 -
 tools/testing/selftests/bpf/progs/test_btf_haskv.c |    2 -
 tools/testing/selftests/bpf/progs/test_btf_newkv.c |    2 -
 tools/testing/selftests/bpf/progs/test_btf_nokv.c  |    2 -
 .../testing/selftests/bpf/progs/test_core_extern.c |    2 -
 .../selftests/bpf/progs/test_core_reloc_arrays.c   |    4 +-
 .../bpf/progs/test_core_reloc_bitfields_direct.c   |    4 +-
 .../bpf/progs/test_core_reloc_bitfields_probed.c   |    4 +-
 .../bpf/progs/test_core_reloc_existence.c          |    4 +-
 .../selftests/bpf/progs/test_core_reloc_flavors.c  |    4 +-
 .../selftests/bpf/progs/test_core_reloc_ints.c     |    4 +-
 .../selftests/bpf/progs/test_core_reloc_kernel.c   |    4 +-
 .../selftests/bpf/progs/test_core_reloc_misc.c     |    4 +-
 .../selftests/bpf/progs/test_core_reloc_mods.c     |    4 +-
 .../selftests/bpf/progs/test_core_reloc_nesting.c  |    4 +-
 .../bpf/progs/test_core_reloc_primitives.c         |    4 +-
 .../bpf/progs/test_core_reloc_ptr_as_arr.c         |    4 +-
 .../selftests/bpf/progs/test_core_reloc_size.c     |    4 +-
 .../selftests/bpf/progs/test_get_stack_rawtp.c     |    2 -
 .../testing/selftests/bpf/progs/test_global_data.c |    2 -
 .../selftests/bpf/progs/test_global_func1.c        |    2 -
 .../selftests/bpf/progs/test_global_func3.c        |    2 -
 .../selftests/bpf/progs/test_global_func5.c        |    2 -
 .../selftests/bpf/progs/test_global_func6.c        |    2 -
 .../selftests/bpf/progs/test_global_func7.c        |    2 -
 tools/testing/selftests/bpf/progs/test_l4lb.c      |    4 +-
 .../selftests/bpf/progs/test_l4lb_noinline.c       |    4 +-
 .../selftests/bpf/progs/test_lirc_mode2_kern.c     |    2 -
 .../selftests/bpf/progs/test_lwt_ip_encap.c        |    4 +-
 .../selftests/bpf/progs/test_lwt_seg6local.c       |    4 +-
 .../testing/selftests/bpf/progs/test_map_in_map.c  |    2 -
 tools/testing/selftests/bpf/progs/test_map_lock.c  |    2 -
 tools/testing/selftests/bpf/progs/test_mmap.c      |    2 -
 tools/testing/selftests/bpf/progs/test_obj_id.c    |    2 -
 tools/testing/selftests/bpf/progs/test_overhead.c  |    4 +-
 .../testing/selftests/bpf/progs/test_perf_buffer.c |    2 -
 tools/testing/selftests/bpf/progs/test_pinning.c   |    2 -
 .../selftests/bpf/progs/test_pinning_invalid.c     |    2 -
 .../testing/selftests/bpf/progs/test_pkt_access.c  |    4 +-
 .../selftests/bpf/progs/test_pkt_md_access.c       |    2 -
 .../testing/selftests/bpf/progs/test_probe_user.c  |    4 +-
 .../selftests/bpf/progs/test_queue_stack_map.h     |    2 -
 .../testing/selftests/bpf/progs/test_rdonly_maps.c |    2 -
 tools/testing/selftests/bpf/progs/test_seg6_loop.c |    4 +-
 .../bpf/progs/test_select_reuseport_kern.c         |    4 +-
 .../selftests/bpf/progs/test_send_signal_kern.c    |    2 -
 .../selftests/bpf/progs/test_sk_lookup_kern.c      |    4 +-
 .../selftests/bpf/progs/test_skb_cgroup_id_kern.c  |    2 -
 tools/testing/selftests/bpf/progs/test_skb_ctx.c   |    2 -
 tools/testing/selftests/bpf/progs/test_skeleton.c  |    2 -
 .../selftests/bpf/progs/test_sock_fields_kern.c    |    4 +-
 tools/testing/selftests/bpf/progs/test_spin_lock.c |    2 -
 .../selftests/bpf/progs/test_stacktrace_build_id.c |    2 -
 .../selftests/bpf/progs/test_stacktrace_map.c      |    2 -
 .../selftests/bpf/progs/test_sysctl_loop1.c        |    2 -
 .../selftests/bpf/progs/test_sysctl_loop2.c        |    2 -
 .../testing/selftests/bpf/progs/test_sysctl_prog.c |    2 -
 tools/testing/selftests/bpf/progs/test_tc_edt.c    |    4 +-
 tools/testing/selftests/bpf/progs/test_tc_tunnel.c |    4 +-
 .../bpf/progs/test_tcp_check_syncookie_kern.c      |    4 +-
 .../testing/selftests/bpf/progs/test_tcp_estats.c  |    2 -
 .../testing/selftests/bpf/progs/test_tcpbpf_kern.c |    4 +-
 .../selftests/bpf/progs/test_tcpnotify_kern.c      |    4 +-
 .../testing/selftests/bpf/progs/test_tracepoint.c  |    2 -
 .../testing/selftests/bpf/progs/test_tunnel_kern.c |    4 +-
 .../selftests/bpf/progs/test_verif_scale1.c        |    2 -
 .../selftests/bpf/progs/test_verif_scale2.c        |    2 -
 .../selftests/bpf/progs/test_verif_scale3.c        |    2 -
 tools/testing/selftests/bpf/progs/test_xdp.c       |    4 +-
 tools/testing/selftests/bpf/progs/test_xdp_loop.c  |    4 +-
 tools/testing/selftests/bpf/progs/test_xdp_meta.c  |    2 -
 .../selftests/bpf/progs/test_xdp_noinline.c        |    4 +-
 .../selftests/bpf/progs/test_xdp_redirect.c        |    2 -
 tools/testing/selftests/bpf/progs/test_xdp_vlan.c  |    4 +-
 tools/testing/selftests/bpf/progs/xdp_dummy.c      |    2 -
 .../testing/selftests/bpf/progs/xdp_redirect_map.c |    2 -
 tools/testing/selftests/bpf/progs/xdp_tx.c         |    2 -
 tools/testing/selftests/bpf/progs/xdping_kern.c    |    4 +-
 tools/testing/selftests/bpf/test_cpp.cpp           |    6 +-
 tools/testing/selftests/bpf/test_hashmap.c         |    2 -
 tools/testing/selftests/bpf/test_progs.h           |    2 -
 tools/testing/selftests/bpf/test_sock.c            |    2 -
 tools/testing/selftests/bpf/test_sockmap_kern.h    |    4 +-
 tools/testing/selftests/bpf/test_sysctl.c          |    2 -
 tools/testing/selftests/bpf/trace_helpers.h        |    2 -
 238 files changed, 381 insertions(+), 368 deletions(-)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157918093154.1357254.7616059374996162336.stgit%40toke.dk.
