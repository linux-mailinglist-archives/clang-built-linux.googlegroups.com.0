Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBOOA7TYAKGQECKFT24A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A0213C5D4
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 15:22:50 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id o12sf6950142pll.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 06:22:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579098169; cv=pass;
        d=google.com; s=arc-20160816;
        b=JyyckAzLyDPm4//3s+Kb/NK2UsfHso9P+/2QO2tKu+iKqk8/bc5eCvd2X/Qc+m770a
         Jb6f1g1HlIsen6VWe6S1Upe5K5WPdytfVjyXWLkyg91lrA+RT1Iqgsq+W97CdG071Ggb
         jtl2OvUbcu7xW3R3cWUpSVaVYPMSP8V4Gbem4WYL4ZZ8WYdnd14aM9L1lP+kIRY+WaWW
         ziA5dfHSrPVH6xgpo8OJWqNFk+ZfojfS1ZxmI7heMnONtyidEA+eZeZ4TdJVKr1FAywo
         VCXU0RfObk34BAhWfHxh7VXEVJO/JqjzY8e9FuTi4WSHYZxl3xzdOqoEB3tAe2n2Db32
         rHHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=mf6/52pcAvimd5pPPVRdh5Jy8Yhs27JPn0+XagyqaEU=;
        b=1JGjGu9mkcFn3TvExS5LGe0DTApJXiAkL380at5NK2m0RPXYpyKtTyEAAwprEQUJYQ
         QH1ukg5Cv9rAtW5jkJQS7Jx3mbTLUhyWmKK9lsdWzwbMnZ4gnTY9RkAJ4ZtMzt7Pbyh0
         deJGj55uK5FskYdPeYHDvWq0t8x6bibT6uF7QHSuOCHOst6g4a9toEggFQ79DVZEOyTu
         b79TqxusXAbHUsX4tY/lYsuOxQIviXKb/x2UtA6hLnZWP2LOYuZ/P0dzhjAWtulYQLsm
         RFaTMkyF5T4nK88xa/xDcIrMY8liwwe752GzclL6pzDAJQBSmvKr5JRtjAYfrsnckMVz
         RxWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VC72eW5h;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mf6/52pcAvimd5pPPVRdh5Jy8Yhs27JPn0+XagyqaEU=;
        b=rljuy+ZgM+Tz/RAycPlh1w+gGPPP+PBFVEcLPLZ251MWD/eQMZoJq8XEFPVz07T7Rq
         6ElGY05LhK8rubNE8zrWAImYViZGnLwPxrBCcnFeI4U6gd9Ox7ciohd0lhT52UsI5UAR
         Z+M0r22YCu1V7NRXLZe4nuZpkmSYbofAPDf78accly5+v/aAwfArb3ufQyzMk63PQmIC
         fCGSJrokH9uparbzaEHP2K2SrfmtOKRy72j+A79Gkf+9d7rdnDM6rg+XRaL6cNPY/yhh
         9mh9c2I1HB5Mco2vBhv+NoTOnbNvv3ghYhFOaYMOc0qKI74MxdjCMmtwds0gag1Ns4jB
         2pLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mf6/52pcAvimd5pPPVRdh5Jy8Yhs27JPn0+XagyqaEU=;
        b=oGT9AraLdoiwXu8ytlPn4+4el7N9Tc2a/1Pvx8XNnCv+l2uMqeKgsashAVJ5E6VF0i
         Xg46Bg99McBSb8yQxS2kSCs0vUIx+l7C99E5eaOH7Z4enSlLD1DxX/3Xhb2qeTle2ART
         +rH8BXgyNSLXgP1AxMjZ1XmRqFgsimJKuK16zEPVdOJp2WnxsXkRwBaNdRXMePN+fMgL
         Hcpj5Aq5eyS1jyVVHYC1MViTjkiIeuZzoocIgsLT3Na2EMtIzxEz+fupa8Ra+ifEsSBC
         wRjOJhimnBpORtkwTR15Vt0xSJkbWrTGyiufT7Abe+wlKkITABBbLHP95ZEqMeAPmF5p
         /ZDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWW8Cm43JPOOnLXT6DaU4Ph8rIKI83I1znIca/xHPwOlhkWUU7e
	flmsvv6oWpTfAyL3G87J8Qw=
X-Google-Smtp-Source: APXvYqyUWeSBlWDx3SdTID0Hhk9JvTdsVOdSh1hOUuloCEbs0VYzz/cTF1zT8Bw5jUs2X4EMKrPNyg==
X-Received: by 2002:a17:902:9a08:: with SMTP id v8mr26601603plp.134.1579098169323;
        Wed, 15 Jan 2020 06:22:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d988:: with SMTP id d8ls6820908pjv.5.gmail; Wed, 15
 Jan 2020 06:22:48 -0800 (PST)
X-Received: by 2002:a17:90b:3c9:: with SMTP id go9mr35748657pjb.7.1579098168865;
        Wed, 15 Jan 2020 06:22:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579098168; cv=none;
        d=google.com; s=arc-20160816;
        b=HZpGhxMzJPNRn/zuMjsa3YJ2M/qQ2qd5kofoGHgRJLlOYERu+56DyxvmGUN0qM5rMh
         8iuPGaoTJ5sN3Q87hQvdS/b/sopswrxCq/RDXNo3QF010xSX6HWZFEddgrphad+2Z/GK
         twE1TanCuTl1JlKaatLBOdQLM1EyVMgElAZCY2wut6tHQKKDPGfTyg7j+tNj6eGiUJoJ
         1zxwB5H4yXRO2Vt7Q9H8whhnY+zFHZG6+FjkoSZtcNmQKYaAAgaYpUjVdDMpU4fdokiv
         AIRNbmlectjjatqqzhE7vz7oRfs6kRsr78XAiNhnqfnc21E+2MxZ8rTVvHHJ73PkCSWT
         kHGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=kv9C7FIPZNuKWUh583JTk3ro8oL1MeAJrpNOxfEn+SM=;
        b=ILdogBZhiYN3Hy1ehu+sp8uNg9MSuAmEluI6U8Of29wX2Ppc35D+2Rp+d8b07RE9st
         Jd10iTyuwXggISLR4gP0ddA1ysoz4fvo05RDeJS7+Mqagz6UY0UZg/AYdidw2K0x/heo
         96uJa4xuofPwxOdoretDgQl9nRrWkn5YsNis3FBkdl762HkikQTx1ajrj3fy8ZoN4LFn
         qMUQWvbTLx7RzyEOEqKngvJol8+uN9Dn3ML5QNfku4Y7aBRMSxq479N1DrmPicnsQVBO
         UnAYrjHnfNHr6JPpj/oPA7A/DAx8Odcm/Np7ZE/xJS93gX9BJKjyepuOg7o+J328Ilnh
         mcRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VC72eW5h;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id h2si256845pju.2.2020.01.15.06.22.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 06:22:48 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-102-JTLRZ31pOu2XqcYQk9s5Qw-1; Wed, 15 Jan 2020 09:22:45 -0500
Received: by mail-lj1-f198.google.com with SMTP id z2so4183780ljh.16
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 06:22:45 -0800 (PST)
X-Received: by 2002:a2e:9cca:: with SMTP id g10mr1950139ljj.258.1579098158838;
        Wed, 15 Jan 2020 06:22:38 -0800 (PST)
X-Received: by 2002:a2e:9cca:: with SMTP id g10mr1950061ljj.258.1579098158008;
        Wed, 15 Jan 2020 06:22:38 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id g27sm8927568lfh.57.2020.01.15.06.22.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 06:22:37 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 7CB1E1804D7; Wed, 15 Jan 2020 15:12:56 +0100 (CET)
Subject: [PATCH bpf-next v2 07/10] samples/bpf: Use consistent include paths
 for libbpf
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
Date: Wed, 15 Jan 2020 15:12:56 +0100
Message-ID: <157909757639.1192265.16930011370158657444.stgit@toke.dk>
In-Reply-To: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: JTLRZ31pOu2XqcYQk9s5Qw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=VC72eW5h;
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

From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>

Fix all files in samples/bpf to include libbpf header files with the bpf/
prefix, to be consistent with external users of the library. Also ensure
that all includes of exported libbpf header files (those that are exported
on 'make install' of the library) use bracketed includes instead of quoted.

To make sure no new files are introduced that doesn't include the bpf/
prefix in its include, remove tools/lib/bpf from the include path entirely,
and use tools/lib instead.

Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are taken fro=
m selftests dir")
Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 samples/bpf/Makefile                              |    3 +--
 samples/bpf/cpustat_kern.c                        |    2 +-
 samples/bpf/fds_example.c                         |    2 +-
 samples/bpf/hbm.c                                 |    4 ++--
 samples/bpf/hbm_kern.h                            |    4 ++--
 samples/bpf/ibumad_kern.c                         |    2 +-
 samples/bpf/ibumad_user.c                         |    2 +-
 samples/bpf/lathist_kern.c                        |    2 +-
 samples/bpf/lwt_len_hist_kern.c                   |    2 +-
 samples/bpf/map_perf_test_kern.c                  |    4 ++--
 samples/bpf/offwaketime_kern.c                    |    4 ++--
 samples/bpf/offwaketime_user.c                    |    2 +-
 samples/bpf/parse_ldabs.c                         |    2 +-
 samples/bpf/parse_simple.c                        |    2 +-
 samples/bpf/parse_varlen.c                        |    2 +-
 samples/bpf/sampleip_kern.c                       |    4 ++--
 samples/bpf/sampleip_user.c                       |    2 +-
 samples/bpf/sock_flags_kern.c                     |    2 +-
 samples/bpf/sockex1_kern.c                        |    2 +-
 samples/bpf/sockex1_user.c                        |    2 +-
 samples/bpf/sockex2_kern.c                        |    2 +-
 samples/bpf/sockex2_user.c                        |    2 +-
 samples/bpf/sockex3_kern.c                        |    2 +-
 samples/bpf/spintest_kern.c                       |    4 ++--
 samples/bpf/spintest_user.c                       |    2 +-
 samples/bpf/syscall_tp_kern.c                     |    2 +-
 samples/bpf/task_fd_query_kern.c                  |    2 +-
 samples/bpf/task_fd_query_user.c                  |    2 +-
 samples/bpf/tc_l2_redirect_kern.c                 |    2 +-
 samples/bpf/tcbpf1_kern.c                         |    2 +-
 samples/bpf/tcp_basertt_kern.c                    |    4 ++--
 samples/bpf/tcp_bufs_kern.c                       |    4 ++--
 samples/bpf/tcp_clamp_kern.c                      |    4 ++--
 samples/bpf/tcp_cong_kern.c                       |    4 ++--
 samples/bpf/tcp_dumpstats_kern.c                  |    4 ++--
 samples/bpf/tcp_iw_kern.c                         |    4 ++--
 samples/bpf/tcp_rwnd_kern.c                       |    4 ++--
 samples/bpf/tcp_synrto_kern.c                     |    4 ++--
 samples/bpf/tcp_tos_reflect_kern.c                |    4 ++--
 samples/bpf/test_cgrp2_tc_kern.c                  |    2 +-
 samples/bpf/test_current_task_under_cgroup_kern.c |    2 +-
 samples/bpf/test_lwt_bpf.c                        |    2 +-
 samples/bpf/test_map_in_map_kern.c                |    4 ++--
 samples/bpf/test_overhead_kprobe_kern.c           |    4 ++--
 samples/bpf/test_overhead_raw_tp_kern.c           |    2 +-
 samples/bpf/test_overhead_tp_kern.c               |    2 +-
 samples/bpf/test_probe_write_user_kern.c          |    4 ++--
 samples/bpf/trace_event_kern.c                    |    4 ++--
 samples/bpf/trace_event_user.c                    |    2 +-
 samples/bpf/trace_output_kern.c                   |    2 +-
 samples/bpf/trace_output_user.c                   |    2 +-
 samples/bpf/tracex1_kern.c                        |    4 ++--
 samples/bpf/tracex2_kern.c                        |    4 ++--
 samples/bpf/tracex3_kern.c                        |    4 ++--
 samples/bpf/tracex4_kern.c                        |    4 ++--
 samples/bpf/tracex5_kern.c                        |    4 ++--
 samples/bpf/tracex6_kern.c                        |    2 +-
 samples/bpf/tracex7_kern.c                        |    2 +-
 samples/bpf/xdp1_kern.c                           |    2 +-
 samples/bpf/xdp1_user.c                           |    4 ++--
 samples/bpf/xdp2_kern.c                           |    2 +-
 samples/bpf/xdp2skb_meta_kern.c                   |    2 +-
 samples/bpf/xdp_adjust_tail_kern.c                |    2 +-
 samples/bpf/xdp_adjust_tail_user.c                |    4 ++--
 samples/bpf/xdp_fwd_kern.c                        |    2 +-
 samples/bpf/xdp_fwd_user.c                        |    2 +-
 samples/bpf/xdp_monitor_kern.c                    |    2 +-
 samples/bpf/xdp_redirect_cpu_kern.c               |    2 +-
 samples/bpf/xdp_redirect_cpu_user.c               |    2 +-
 samples/bpf/xdp_redirect_kern.c                   |    2 +-
 samples/bpf/xdp_redirect_map_kern.c               |    2 +-
 samples/bpf/xdp_redirect_map_user.c               |    2 +-
 samples/bpf/xdp_redirect_user.c                   |    2 +-
 samples/bpf/xdp_router_ipv4_kern.c                |    2 +-
 samples/bpf/xdp_router_ipv4_user.c                |    2 +-
 samples/bpf/xdp_rxq_info_kern.c                   |    2 +-
 samples/bpf/xdp_rxq_info_user.c                   |    4 ++--
 samples/bpf/xdp_sample_pkts_kern.c                |    2 +-
 samples/bpf/xdp_sample_pkts_user.c                |    2 +-
 samples/bpf/xdp_tx_iptunnel_kern.c                |    2 +-
 samples/bpf/xdp_tx_iptunnel_user.c                |    2 +-
 samples/bpf/xdpsock_kern.c                        |    2 +-
 samples/bpf/xdpsock_user.c                        |    6 +++---
 83 files changed, 112 insertions(+), 113 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index f86d713a17a5..b0e8adf7eb01 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -184,7 +184,6 @@ TPROGS_CFLAGS +=3D -Wmissing-prototypes
 TPROGS_CFLAGS +=3D -Wstrict-prototypes
=20
 TPROGS_CFLAGS +=3D -I$(objtree)/usr/include
-TPROGS_CFLAGS +=3D -I$(srctree)/tools/lib/bpf/
 TPROGS_CFLAGS +=3D -I$(srctree)/tools/testing/selftests/bpf/
 TPROGS_CFLAGS +=3D -I$(srctree)/tools/lib/
 TPROGS_CFLAGS +=3D -I$(srctree)/tools/include
@@ -305,7 +304,7 @@ $(obj)/%.o: $(src)/%.c
 	@echo "  CLANG-bpf " $@
 	$(Q)$(CLANG) $(NOSTDINC_FLAGS) $(LINUXINCLUDE) $(BPF_EXTRA_CFLAGS) \
 		-I$(obj) -I$(srctree)/tools/testing/selftests/bpf/ \
-		-I$(srctree)/tools/lib/bpf/ \
+		-I$(srctree)/tools/lib/ \
 		-D__KERNEL__ -D__BPF_TRACING__ -Wno-unused-value -Wno-pointer-sign \
 		-D__TARGET_ARCH_$(SRCARCH) -Wno-compare-distinct-pointer-types \
 		-Wno-gnu-variable-sized-type-not-at-end \
diff --git a/samples/bpf/cpustat_kern.c b/samples/bpf/cpustat_kern.c
index 68c84da065b1..a86a19d5f033 100644
--- a/samples/bpf/cpustat_kern.c
+++ b/samples/bpf/cpustat_kern.c
@@ -3,7 +3,7 @@
 #include <linux/version.h>
 #include <linux/ptrace.h>
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 /*
  * The CPU number, cstate number and pstate number are based
diff --git a/samples/bpf/fds_example.c b/samples/bpf/fds_example.c
index 2d4b717726b6..d5992f787232 100644
--- a/samples/bpf/fds_example.c
+++ b/samples/bpf/fds_example.c
@@ -14,7 +14,7 @@
=20
 #include <bpf/bpf.h>
=20
-#include "libbpf.h"
+#include <bpf/libbpf.h>
 #include "bpf_insn.h"
 #include "sock_example.h"
=20
diff --git a/samples/bpf/hbm.c b/samples/bpf/hbm.c
index 829b68d87687..7d7153777678 100644
--- a/samples/bpf/hbm.c
+++ b/samples/bpf/hbm.c
@@ -50,8 +50,8 @@
 #include "cgroup_helpers.h"
 #include "hbm.h"
 #include "bpf_util.h"
-#include "bpf.h"
-#include "libbpf.h"
+#include <bpf/bpf.h>
+#include <bpf/libbpf.h>
=20
 bool outFlag =3D true;
 int minRate =3D 1000;		/* cgroup rate limit in Mbps */
diff --git a/samples/bpf/hbm_kern.h b/samples/bpf/hbm_kern.h
index 4edaf47876ca..e00f26f6afba 100644
--- a/samples/bpf/hbm_kern.h
+++ b/samples/bpf/hbm_kern.h
@@ -22,8 +22,8 @@
 #include <uapi/linux/pkt_cls.h>
 #include <net/ipv6.h>
 #include <net/inet_ecn.h>
-#include "bpf_endian.h"
-#include "bpf_helpers.h"
+#include <bpf/bpf_endian.h>
+#include <bpf/bpf_helpers.h>
 #include "hbm.h"
=20
 #define DROP_PKT	0
diff --git a/samples/bpf/ibumad_kern.c b/samples/bpf/ibumad_kern.c
index f281df7e0089..3a91b4c1989a 100644
--- a/samples/bpf/ibumad_kern.c
+++ b/samples/bpf/ibumad_kern.c
@@ -13,7 +13,7 @@
 #define KBUILD_MODNAME "ibumad_count_pkts_by_class"
 #include <uapi/linux/bpf.h>
=20
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
=20
 struct bpf_map_def SEC("maps") read_count =3D {
diff --git a/samples/bpf/ibumad_user.c b/samples/bpf/ibumad_user.c
index cb5a8f994849..fa06eef31a84 100644
--- a/samples/bpf/ibumad_user.c
+++ b/samples/bpf/ibumad_user.c
@@ -25,7 +25,7 @@
=20
 #include "bpf_load.h"
 #include "bpf_util.h"
-#include "libbpf.h"
+#include <bpf/libbpf.h>
=20
 static void dump_counts(int fd)
 {
diff --git a/samples/bpf/lathist_kern.c b/samples/bpf/lathist_kern.c
index 18fa088473cd..ca9c2e4e69aa 100644
--- a/samples/bpf/lathist_kern.c
+++ b/samples/bpf/lathist_kern.c
@@ -8,7 +8,7 @@
 #include <linux/version.h>
 #include <linux/ptrace.h>
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 #define MAX_ENTRIES	20
 #define MAX_CPU		4
diff --git a/samples/bpf/lwt_len_hist_kern.c b/samples/bpf/lwt_len_hist_ker=
n.c
index df75383280f9..9ed63e10e170 100644
--- a/samples/bpf/lwt_len_hist_kern.c
+++ b/samples/bpf/lwt_len_hist_kern.c
@@ -14,7 +14,7 @@
 #include <uapi/linux/if_ether.h>
 #include <uapi/linux/ip.h>
 #include <uapi/linux/in.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 # define printk(fmt, ...)						\
 		({							\
diff --git a/samples/bpf/map_perf_test_kern.c b/samples/bpf/map_perf_test_k=
ern.c
index 281bcdaee58e..12e91ae64d4d 100644
--- a/samples/bpf/map_perf_test_kern.c
+++ b/samples/bpf/map_perf_test_kern.c
@@ -8,9 +8,9 @@
 #include <linux/netdevice.h>
 #include <linux/version.h>
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "bpf_legacy.h"
-#include "bpf_tracing.h"
+#include <bpf/bpf_tracing.h>
=20
 #define MAX_ENTRIES 1000
 #define MAX_NR_CPUS 1024
diff --git a/samples/bpf/offwaketime_kern.c b/samples/bpf/offwaketime_kern.=
c
index 9cb5207a692f..c4ec10dbfc3b 100644
--- a/samples/bpf/offwaketime_kern.c
+++ b/samples/bpf/offwaketime_kern.c
@@ -5,8 +5,8 @@
  * License as published by the Free Software Foundation.
  */
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
-#include "bpf_tracing.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_tracing.h>
 #include <uapi/linux/ptrace.h>
 #include <uapi/linux/perf_event.h>
 #include <linux/version.h>
diff --git a/samples/bpf/offwaketime_user.c b/samples/bpf/offwaketime_user.=
c
index fc8767d001f6..51c7da5341cc 100644
--- a/samples/bpf/offwaketime_user.c
+++ b/samples/bpf/offwaketime_user.c
@@ -12,7 +12,7 @@
 #include <assert.h>
 #include <stdbool.h>
 #include <sys/resource.h>
-#include "libbpf.h"
+#include <bpf/libbpf.h>
 #include "bpf_load.h"
 #include "trace_helpers.h"
=20
diff --git a/samples/bpf/parse_ldabs.c b/samples/bpf/parse_ldabs.c
index ef5892377beb..c6f65f90a097 100644
--- a/samples/bpf/parse_ldabs.c
+++ b/samples/bpf/parse_ldabs.c
@@ -11,7 +11,7 @@
 #include <linux/tcp.h>
 #include <linux/udp.h>
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "bpf_legacy.h"
=20
 #define DEFAULT_PKTGEN_UDP_PORT	9
diff --git a/samples/bpf/parse_simple.c b/samples/bpf/parse_simple.c
index 10af53d33cc2..4a486cb1e0df 100644
--- a/samples/bpf/parse_simple.c
+++ b/samples/bpf/parse_simple.c
@@ -12,7 +12,7 @@
 #include <linux/udp.h>
 #include <uapi/linux/bpf.h>
 #include <net/ip.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 #define DEFAULT_PKTGEN_UDP_PORT 9
=20
diff --git a/samples/bpf/parse_varlen.c b/samples/bpf/parse_varlen.c
index 0b6f22feb2c9..d8623846e810 100644
--- a/samples/bpf/parse_varlen.c
+++ b/samples/bpf/parse_varlen.c
@@ -14,7 +14,7 @@
 #include <linux/udp.h>
 #include <uapi/linux/bpf.h>
 #include <net/ip.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 #define DEFAULT_PKTGEN_UDP_PORT 9
 #define DEBUG 0
diff --git a/samples/bpf/sampleip_kern.c b/samples/bpf/sampleip_kern.c
index 4a190893894f..e504dc308371 100644
--- a/samples/bpf/sampleip_kern.c
+++ b/samples/bpf/sampleip_kern.c
@@ -8,8 +8,8 @@
 #include <linux/ptrace.h>
 #include <uapi/linux/bpf.h>
 #include <uapi/linux/bpf_perf_event.h>
-#include "bpf_helpers.h"
-#include "bpf_tracing.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_tracing.h>
=20
 #define MAX_IPS		8192
=20
diff --git a/samples/bpf/sampleip_user.c b/samples/bpf/sampleip_user.c
index 6b5dc26d9701..b0f115f938bc 100644
--- a/samples/bpf/sampleip_user.c
+++ b/samples/bpf/sampleip_user.c
@@ -15,7 +15,7 @@
 #include <linux/ptrace.h>
 #include <linux/bpf.h>
 #include <sys/ioctl.h>
-#include "libbpf.h"
+#include <bpf/libbpf.h>
 #include "bpf_load.h"
 #include "perf-sys.h"
 #include "trace_helpers.h"
diff --git a/samples/bpf/sock_flags_kern.c b/samples/bpf/sock_flags_kern.c
index 05dcdf8a4baa..6d0ac7569d6f 100644
--- a/samples/bpf/sock_flags_kern.c
+++ b/samples/bpf/sock_flags_kern.c
@@ -3,7 +3,7 @@
 #include <linux/net.h>
 #include <uapi/linux/in.h>
 #include <uapi/linux/in6.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 SEC("cgroup/sock1")
 int bpf_prog1(struct bpf_sock *sk)
diff --git a/samples/bpf/sockex1_kern.c b/samples/bpf/sockex1_kern.c
index 2408dbfb7a21..431c956460ad 100644
--- a/samples/bpf/sockex1_kern.c
+++ b/samples/bpf/sockex1_kern.c
@@ -2,7 +2,7 @@
 #include <uapi/linux/if_ether.h>
 #include <uapi/linux/if_packet.h>
 #include <uapi/linux/ip.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "bpf_legacy.h"
=20
 struct {
diff --git a/samples/bpf/sockex1_user.c b/samples/bpf/sockex1_user.c
index a219442afbee..3c83722877dc 100644
--- a/samples/bpf/sockex1_user.c
+++ b/samples/bpf/sockex1_user.c
@@ -3,7 +3,7 @@
 #include <assert.h>
 #include <linux/bpf.h>
 #include <bpf/bpf.h>
-#include "libbpf.h"
+#include <bpf/libbpf.h>
 #include "sock_example.h"
 #include <unistd.h>
 #include <arpa/inet.h>
diff --git a/samples/bpf/sockex2_kern.c b/samples/bpf/sockex2_kern.c
index a7bcd03bf529..a41dd520bc53 100644
--- a/samples/bpf/sockex2_kern.c
+++ b/samples/bpf/sockex2_kern.c
@@ -1,5 +1,5 @@
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "bpf_legacy.h"
 #include <uapi/linux/in.h>
 #include <uapi/linux/if.h>
diff --git a/samples/bpf/sockex2_user.c b/samples/bpf/sockex2_user.c
index 6de383ddd08b..af925a5afd1d 100644
--- a/samples/bpf/sockex2_user.c
+++ b/samples/bpf/sockex2_user.c
@@ -3,7 +3,7 @@
 #include <assert.h>
 #include <linux/bpf.h>
 #include <bpf/bpf.h>
-#include "libbpf.h"
+#include <bpf/libbpf.h>
 #include "sock_example.h"
 #include <unistd.h>
 #include <arpa/inet.h>
diff --git a/samples/bpf/sockex3_kern.c b/samples/bpf/sockex3_kern.c
index 151dd842ecc0..36d4dac23549 100644
--- a/samples/bpf/sockex3_kern.c
+++ b/samples/bpf/sockex3_kern.c
@@ -5,7 +5,7 @@
  * License as published by the Free Software Foundation.
  */
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "bpf_legacy.h"
 #include <uapi/linux/in.h>
 #include <uapi/linux/if.h>
diff --git a/samples/bpf/spintest_kern.c b/samples/bpf/spintest_kern.c
index 6e9478aa2938..f508af357251 100644
--- a/samples/bpf/spintest_kern.c
+++ b/samples/bpf/spintest_kern.c
@@ -9,8 +9,8 @@
 #include <linux/version.h>
 #include <uapi/linux/bpf.h>
 #include <uapi/linux/perf_event.h>
-#include "bpf_helpers.h"
-#include "bpf_tracing.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_tracing.h>
=20
 struct bpf_map_def SEC("maps") my_map =3D {
 	.type =3D BPF_MAP_TYPE_HASH,
diff --git a/samples/bpf/spintest_user.c b/samples/bpf/spintest_user.c
index 2556af2d9b3e..fb430ea2ef51 100644
--- a/samples/bpf/spintest_user.c
+++ b/samples/bpf/spintest_user.c
@@ -5,7 +5,7 @@
 #include <string.h>
 #include <assert.h>
 #include <sys/resource.h>
-#include "libbpf.h"
+#include <bpf/libbpf.h>
 #include "bpf_load.h"
 #include "trace_helpers.h"
=20
diff --git a/samples/bpf/syscall_tp_kern.c b/samples/bpf/syscall_tp_kern.c
index 630ce8c4d5a2..5a62b03b1f88 100644
--- a/samples/bpf/syscall_tp_kern.c
+++ b/samples/bpf/syscall_tp_kern.c
@@ -2,7 +2,7 @@
 /* Copyright (c) 2017 Facebook
  */
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct syscalls_enter_open_args {
 	unsigned long long unused;
diff --git a/samples/bpf/task_fd_query_kern.c b/samples/bpf/task_fd_query_k=
ern.c
index fb56fc2a3e5d..278ade5427c8 100644
--- a/samples/bpf/task_fd_query_kern.c
+++ b/samples/bpf/task_fd_query_kern.c
@@ -2,7 +2,7 @@
 #include <linux/version.h>
 #include <linux/ptrace.h>
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 SEC("kprobe/blk_mq_start_request")
 int bpf_prog1(struct pt_regs *ctx)
diff --git a/samples/bpf/task_fd_query_user.c b/samples/bpf/task_fd_query_u=
ser.c
index 4c31b305e6ef..ff2e9c1c7266 100644
--- a/samples/bpf/task_fd_query_user.c
+++ b/samples/bpf/task_fd_query_user.c
@@ -15,7 +15,7 @@
 #include <sys/stat.h>
 #include <linux/perf_event.h>
=20
-#include "libbpf.h"
+#include <bpf/libbpf.h>
 #include "bpf_load.h"
 #include "bpf_util.h"
 #include "perf-sys.h"
diff --git a/samples/bpf/tc_l2_redirect_kern.c b/samples/bpf/tc_l2_redirect=
_kern.c
index 7ef2a12b25b2..fd2fa0004330 100644
--- a/samples/bpf/tc_l2_redirect_kern.c
+++ b/samples/bpf/tc_l2_redirect_kern.c
@@ -15,7 +15,7 @@
 #include <uapi/linux/filter.h>
 #include <uapi/linux/pkt_cls.h>
 #include <net/ipv6.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 #define _htonl __builtin_bswap32
=20
diff --git a/samples/bpf/tcbpf1_kern.c b/samples/bpf/tcbpf1_kern.c
index ff43341bdfce..e9356130f84e 100644
--- a/samples/bpf/tcbpf1_kern.c
+++ b/samples/bpf/tcbpf1_kern.c
@@ -7,7 +7,7 @@
 #include <uapi/linux/tcp.h>
 #include <uapi/linux/filter.h>
 #include <uapi/linux/pkt_cls.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "bpf_legacy.h"
=20
 /* compiler workaround */
diff --git a/samples/bpf/tcp_basertt_kern.c b/samples/bpf/tcp_basertt_kern.=
c
index 9dba48c2b920..8dfe09a92fec 100644
--- a/samples/bpf/tcp_basertt_kern.c
+++ b/samples/bpf/tcp_basertt_kern.c
@@ -16,8 +16,8 @@
 #include <uapi/linux/if_packet.h>
 #include <uapi/linux/ip.h>
 #include <linux/socket.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 #define DEBUG 1
=20
diff --git a/samples/bpf/tcp_bufs_kern.c b/samples/bpf/tcp_bufs_kern.c
index af8486f33771..6a80d08952ad 100644
--- a/samples/bpf/tcp_bufs_kern.c
+++ b/samples/bpf/tcp_bufs_kern.c
@@ -17,8 +17,8 @@
 #include <uapi/linux/if_packet.h>
 #include <uapi/linux/ip.h>
 #include <linux/socket.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 #define DEBUG 1
=20
diff --git a/samples/bpf/tcp_clamp_kern.c b/samples/bpf/tcp_clamp_kern.c
index 26c0fd091f3c..e88bd9ab0695 100644
--- a/samples/bpf/tcp_clamp_kern.c
+++ b/samples/bpf/tcp_clamp_kern.c
@@ -17,8 +17,8 @@
 #include <uapi/linux/if_packet.h>
 #include <uapi/linux/ip.h>
 #include <linux/socket.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 #define DEBUG 1
=20
diff --git a/samples/bpf/tcp_cong_kern.c b/samples/bpf/tcp_cong_kern.c
index 6d4dc4c7dd1e..2311fc9dde85 100644
--- a/samples/bpf/tcp_cong_kern.c
+++ b/samples/bpf/tcp_cong_kern.c
@@ -16,8 +16,8 @@
 #include <uapi/linux/if_packet.h>
 #include <uapi/linux/ip.h>
 #include <linux/socket.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 #define DEBUG 1
=20
diff --git a/samples/bpf/tcp_dumpstats_kern.c b/samples/bpf/tcp_dumpstats_k=
ern.c
index 8557913106a0..e80d3afd24bd 100644
--- a/samples/bpf/tcp_dumpstats_kern.c
+++ b/samples/bpf/tcp_dumpstats_kern.c
@@ -4,8 +4,8 @@
  */
 #include <linux/bpf.h>
=20
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 #define INTERVAL			1000000000ULL
=20
diff --git a/samples/bpf/tcp_iw_kern.c b/samples/bpf/tcp_iw_kern.c
index da61d53378b3..d1444557358e 100644
--- a/samples/bpf/tcp_iw_kern.c
+++ b/samples/bpf/tcp_iw_kern.c
@@ -17,8 +17,8 @@
 #include <uapi/linux/if_packet.h>
 #include <uapi/linux/ip.h>
 #include <linux/socket.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 #define DEBUG 1
=20
diff --git a/samples/bpf/tcp_rwnd_kern.c b/samples/bpf/tcp_rwnd_kern.c
index d011e38b80d2..223d9c23b10c 100644
--- a/samples/bpf/tcp_rwnd_kern.c
+++ b/samples/bpf/tcp_rwnd_kern.c
@@ -16,8 +16,8 @@
 #include <uapi/linux/if_packet.h>
 #include <uapi/linux/ip.h>
 #include <linux/socket.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 #define DEBUG 1
=20
diff --git a/samples/bpf/tcp_synrto_kern.c b/samples/bpf/tcp_synrto_kern.c
index 720d1950322d..d58004eef124 100644
--- a/samples/bpf/tcp_synrto_kern.c
+++ b/samples/bpf/tcp_synrto_kern.c
@@ -16,8 +16,8 @@
 #include <uapi/linux/if_packet.h>
 #include <uapi/linux/ip.h>
 #include <linux/socket.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 #define DEBUG 1
=20
diff --git a/samples/bpf/tcp_tos_reflect_kern.c b/samples/bpf/tcp_tos_refle=
ct_kern.c
index 369faca70a15..953fedc79ce1 100644
--- a/samples/bpf/tcp_tos_reflect_kern.c
+++ b/samples/bpf/tcp_tos_reflect_kern.c
@@ -15,8 +15,8 @@
 #include <uapi/linux/ipv6.h>
 #include <uapi/linux/in.h>
 #include <linux/socket.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 #define DEBUG 1
=20
diff --git a/samples/bpf/test_cgrp2_tc_kern.c b/samples/bpf/test_cgrp2_tc_k=
ern.c
index 1547b36a7b7b..4dd532a312b9 100644
--- a/samples/bpf/test_cgrp2_tc_kern.c
+++ b/samples/bpf/test_cgrp2_tc_kern.c
@@ -10,7 +10,7 @@
 #include <uapi/linux/ipv6.h>
 #include <uapi/linux/pkt_cls.h>
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 /* copy of 'struct ethhdr' without __packed */
 struct eth_hdr {
diff --git a/samples/bpf/test_current_task_under_cgroup_kern.c b/samples/bp=
f/test_current_task_under_cgroup_kern.c
index 86b28d7d6c99..6dc4f41bb6cb 100644
--- a/samples/bpf/test_current_task_under_cgroup_kern.c
+++ b/samples/bpf/test_current_task_under_cgroup_kern.c
@@ -8,7 +8,7 @@
 #include <linux/ptrace.h>
 #include <uapi/linux/bpf.h>
 #include <linux/version.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include <uapi/linux/utsname.h>
=20
 struct bpf_map_def SEC("maps") cgroup_map =3D {
diff --git a/samples/bpf/test_lwt_bpf.c b/samples/bpf/test_lwt_bpf.c
index bacc8013436b..1b568575ad11 100644
--- a/samples/bpf/test_lwt_bpf.c
+++ b/samples/bpf/test_lwt_bpf.c
@@ -20,7 +20,7 @@
 #include <linux/udp.h>
 #include <linux/icmpv6.h>
 #include <linux/if_ether.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include <string.h>
=20
 # define printk(fmt, ...)						\
diff --git a/samples/bpf/test_map_in_map_kern.c b/samples/bpf/test_map_in_m=
ap_kern.c
index 32ee752f19df..6cee61e8ce9b 100644
--- a/samples/bpf/test_map_in_map_kern.c
+++ b/samples/bpf/test_map_in_map_kern.c
@@ -10,9 +10,9 @@
 #include <linux/version.h>
 #include <uapi/linux/bpf.h>
 #include <uapi/linux/in6.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "bpf_legacy.h"
-#include "bpf_tracing.h"
+#include <bpf/bpf_tracing.h>
=20
 #define MAX_NR_PORTS 65536
=20
diff --git a/samples/bpf/test_overhead_kprobe_kern.c b/samples/bpf/test_ove=
rhead_kprobe_kern.c
index 8d2518e68db9..8b811c29dc79 100644
--- a/samples/bpf/test_overhead_kprobe_kern.c
+++ b/samples/bpf/test_overhead_kprobe_kern.c
@@ -7,8 +7,8 @@
 #include <linux/version.h>
 #include <linux/ptrace.h>
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
-#include "bpf_tracing.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_tracing.h>
=20
 #define _(P) ({typeof(P) val =3D 0; bpf_probe_read(&val, sizeof(val), &P);=
 val;})
=20
diff --git a/samples/bpf/test_overhead_raw_tp_kern.c b/samples/bpf/test_ove=
rhead_raw_tp_kern.c
index d2af8bc1c805..8763181a32f3 100644
--- a/samples/bpf/test_overhead_raw_tp_kern.c
+++ b/samples/bpf/test_overhead_raw_tp_kern.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (c) 2018 Facebook */
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 SEC("raw_tracepoint/task_rename")
 int prog(struct bpf_raw_tracepoint_args *ctx)
diff --git a/samples/bpf/test_overhead_tp_kern.c b/samples/bpf/test_overhea=
d_tp_kern.c
index 38f5c0b9da9f..eaa32693f8fc 100644
--- a/samples/bpf/test_overhead_tp_kern.c
+++ b/samples/bpf/test_overhead_tp_kern.c
@@ -5,7 +5,7 @@
  * License as published by the Free Software Foundation.
  */
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 /* from /sys/kernel/debug/tracing/events/task/task_rename/format */
 struct task_rename {
diff --git a/samples/bpf/test_probe_write_user_kern.c b/samples/bpf/test_pr=
obe_write_user_kern.c
index b7c48f37132c..f033f36a13a3 100644
--- a/samples/bpf/test_probe_write_user_kern.c
+++ b/samples/bpf/test_probe_write_user_kern.c
@@ -8,8 +8,8 @@
 #include <linux/netdevice.h>
 #include <uapi/linux/bpf.h>
 #include <linux/version.h>
-#include "bpf_helpers.h"
-#include "bpf_tracing.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_tracing.h>
=20
 struct bpf_map_def SEC("maps") dnat_map =3D {
 	.type =3D BPF_MAP_TYPE_HASH,
diff --git a/samples/bpf/trace_event_kern.c b/samples/bpf/trace_event_kern.=
c
index 8dc18d233a27..da1d69e20645 100644
--- a/samples/bpf/trace_event_kern.c
+++ b/samples/bpf/trace_event_kern.c
@@ -9,8 +9,8 @@
 #include <uapi/linux/bpf.h>
 #include <uapi/linux/bpf_perf_event.h>
 #include <uapi/linux/perf_event.h>
-#include "bpf_helpers.h"
-#include "bpf_tracing.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_tracing.h>
=20
 struct key_t {
 	char comm[TASK_COMM_LEN];
diff --git a/samples/bpf/trace_event_user.c b/samples/bpf/trace_event_user.=
c
index 749a50f2f9f3..356171bc392b 100644
--- a/samples/bpf/trace_event_user.c
+++ b/samples/bpf/trace_event_user.c
@@ -15,7 +15,7 @@
 #include <assert.h>
 #include <errno.h>
 #include <sys/resource.h>
-#include "libbpf.h"
+#include <bpf/libbpf.h>
 #include "bpf_load.h"
 #include "perf-sys.h"
 #include "trace_helpers.h"
diff --git a/samples/bpf/trace_output_kern.c b/samples/bpf/trace_output_ker=
n.c
index 9b96f4fb8cea..1d7d422cae6f 100644
--- a/samples/bpf/trace_output_kern.c
+++ b/samples/bpf/trace_output_kern.c
@@ -1,7 +1,7 @@
 #include <linux/ptrace.h>
 #include <linux/version.h>
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct bpf_map_def SEC("maps") my_map =3D {
 	.type =3D BPF_MAP_TYPE_PERF_EVENT_ARRAY,
diff --git a/samples/bpf/trace_output_user.c b/samples/bpf/trace_output_use=
r.c
index 8ee47699a870..60a17dd05345 100644
--- a/samples/bpf/trace_output_user.c
+++ b/samples/bpf/trace_output_user.c
@@ -15,7 +15,7 @@
 #include <sys/mman.h>
 #include <time.h>
 #include <signal.h>
-#include <libbpf.h>
+#include <bpf/libbpf.h>
 #include "bpf_load.h"
 #include "perf-sys.h"
=20
diff --git a/samples/bpf/tracex1_kern.c b/samples/bpf/tracex1_kern.c
index 1a15f6605129..8e2610e14475 100644
--- a/samples/bpf/tracex1_kern.c
+++ b/samples/bpf/tracex1_kern.c
@@ -8,8 +8,8 @@
 #include <linux/netdevice.h>
 #include <uapi/linux/bpf.h>
 #include <linux/version.h>
-#include "bpf_helpers.h"
-#include "bpf_tracing.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_tracing.h>
=20
 #define _(P) ({typeof(P) val =3D 0; bpf_probe_read(&val, sizeof(val), &P);=
 val;})
=20
diff --git a/samples/bpf/tracex2_kern.c b/samples/bpf/tracex2_kern.c
index d70b3ea79ea7..d865bb309bcb 100644
--- a/samples/bpf/tracex2_kern.c
+++ b/samples/bpf/tracex2_kern.c
@@ -8,8 +8,8 @@
 #include <linux/netdevice.h>
 #include <linux/version.h>
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
-#include "bpf_tracing.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_tracing.h>
=20
 struct bpf_map_def SEC("maps") my_map =3D {
 	.type =3D BPF_MAP_TYPE_HASH,
diff --git a/samples/bpf/tracex3_kern.c b/samples/bpf/tracex3_kern.c
index 9af546bebfa9..fe21c14feb8d 100644
--- a/samples/bpf/tracex3_kern.c
+++ b/samples/bpf/tracex3_kern.c
@@ -8,8 +8,8 @@
 #include <linux/netdevice.h>
 #include <linux/version.h>
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
-#include "bpf_tracing.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_tracing.h>
=20
 struct bpf_map_def SEC("maps") my_map =3D {
 	.type =3D BPF_MAP_TYPE_HASH,
diff --git a/samples/bpf/tracex4_kern.c b/samples/bpf/tracex4_kern.c
index 2a02cbe9d9a1..b1bb9df88f8e 100644
--- a/samples/bpf/tracex4_kern.c
+++ b/samples/bpf/tracex4_kern.c
@@ -7,8 +7,8 @@
 #include <linux/ptrace.h>
 #include <linux/version.h>
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
-#include "bpf_tracing.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_tracing.h>
=20
 struct pair {
 	u64 val;
diff --git a/samples/bpf/tracex5_kern.c b/samples/bpf/tracex5_kern.c
index b3557b21a8fe..481790fde864 100644
--- a/samples/bpf/tracex5_kern.c
+++ b/samples/bpf/tracex5_kern.c
@@ -10,8 +10,8 @@
 #include <uapi/linux/seccomp.h>
 #include <uapi/linux/unistd.h>
 #include "syscall_nrs.h"
-#include "bpf_helpers.h"
-#include "bpf_tracing.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_tracing.h>
=20
 #define PROG(F) SEC("kprobe/"__stringify(F)) int bpf_func_##F
=20
diff --git a/samples/bpf/tracex6_kern.c b/samples/bpf/tracex6_kern.c
index 46c557afac73..96c234efa852 100644
--- a/samples/bpf/tracex6_kern.c
+++ b/samples/bpf/tracex6_kern.c
@@ -1,7 +1,7 @@
 #include <linux/ptrace.h>
 #include <linux/version.h>
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct bpf_map_def SEC("maps") counters =3D {
 	.type =3D BPF_MAP_TYPE_PERF_EVENT_ARRAY,
diff --git a/samples/bpf/tracex7_kern.c b/samples/bpf/tracex7_kern.c
index 1ab308a43e0f..c5a92df8ac31 100644
--- a/samples/bpf/tracex7_kern.c
+++ b/samples/bpf/tracex7_kern.c
@@ -1,7 +1,7 @@
 #include <uapi/linux/ptrace.h>
 #include <uapi/linux/bpf.h>
 #include <linux/version.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 SEC("kprobe/open_ctree")
 int bpf_prog1(struct pt_regs *ctx)
diff --git a/samples/bpf/xdp1_kern.c b/samples/bpf/xdp1_kern.c
index db6870aee42c..34b64394ed9c 100644
--- a/samples/bpf/xdp1_kern.c
+++ b/samples/bpf/xdp1_kern.c
@@ -12,7 +12,7 @@
 #include <linux/if_vlan.h>
 #include <linux/ip.h>
 #include <linux/ipv6.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct {
 	__uint(type, BPF_MAP_TYPE_PERCPU_ARRAY);
diff --git a/samples/bpf/xdp1_user.c b/samples/bpf/xdp1_user.c
index 38a8852cb57f..c447ad9e3a1d 100644
--- a/samples/bpf/xdp1_user.c
+++ b/samples/bpf/xdp1_user.c
@@ -15,8 +15,8 @@
 #include <net/if.h>
=20
 #include "bpf_util.h"
-#include "bpf.h"
-#include "libbpf.h"
+#include <bpf/bpf.h>
+#include <bpf/libbpf.h>
=20
 static int ifindex;
 static __u32 xdp_flags =3D XDP_FLAGS_UPDATE_IF_NOEXIST;
diff --git a/samples/bpf/xdp2_kern.c b/samples/bpf/xdp2_kern.c
index c74b52c6d945..c787f4b49646 100644
--- a/samples/bpf/xdp2_kern.c
+++ b/samples/bpf/xdp2_kern.c
@@ -12,7 +12,7 @@
 #include <linux/if_vlan.h>
 #include <linux/ip.h>
 #include <linux/ipv6.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct {
 	__uint(type, BPF_MAP_TYPE_PERCPU_ARRAY);
diff --git a/samples/bpf/xdp2skb_meta_kern.c b/samples/bpf/xdp2skb_meta_ker=
n.c
index 0c12048ac79f..9b783316e860 100644
--- a/samples/bpf/xdp2skb_meta_kern.c
+++ b/samples/bpf/xdp2skb_meta_kern.c
@@ -12,7 +12,7 @@
 #include <uapi/linux/bpf.h>
 #include <uapi/linux/pkt_cls.h>
=20
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 /*
  * This struct is stored in the XDP 'data_meta' area, which is located
diff --git a/samples/bpf/xdp_adjust_tail_kern.c b/samples/bpf/xdp_adjust_ta=
il_kern.c
index 0f707e0fb375..ffdd548627f0 100644
--- a/samples/bpf/xdp_adjust_tail_kern.c
+++ b/samples/bpf/xdp_adjust_tail_kern.c
@@ -18,7 +18,7 @@
 #include <linux/if_vlan.h>
 #include <linux/ip.h>
 #include <linux/icmp.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 #define DEFAULT_TTL 64
 #define MAX_PCKT_SIZE 600
diff --git a/samples/bpf/xdp_adjust_tail_user.c b/samples/bpf/xdp_adjust_ta=
il_user.c
index 008789eb6ada..ba482dc3da33 100644
--- a/samples/bpf/xdp_adjust_tail_user.c
+++ b/samples/bpf/xdp_adjust_tail_user.c
@@ -19,8 +19,8 @@
 #include <netinet/ether.h>
 #include <unistd.h>
 #include <time.h>
-#include "bpf.h"
-#include "libbpf.h"
+#include <bpf/bpf.h>
+#include <bpf/libbpf.h>
=20
 #define STATS_INTERVAL_S 2U
 #define MAX_PCKT_SIZE 600
diff --git a/samples/bpf/xdp_fwd_kern.c b/samples/bpf/xdp_fwd_kern.c
index d013029aeaa2..54c099cbd639 100644
--- a/samples/bpf/xdp_fwd_kern.c
+++ b/samples/bpf/xdp_fwd_kern.c
@@ -19,7 +19,7 @@
 #include <linux/ip.h>
 #include <linux/ipv6.h>
=20
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 #define IPV6_FLOWINFO_MASK              cpu_to_be32(0x0FFFFFFF)
=20
diff --git a/samples/bpf/xdp_fwd_user.c b/samples/bpf/xdp_fwd_user.c
index c30f9acfdb84..74a4583d0d86 100644
--- a/samples/bpf/xdp_fwd_user.c
+++ b/samples/bpf/xdp_fwd_user.c
@@ -24,7 +24,7 @@
 #include <fcntl.h>
 #include <libgen.h>
=20
-#include "libbpf.h"
+#include <bpf/libbpf.h>
 #include <bpf/bpf.h>
=20
 static __u32 xdp_flags =3D XDP_FLAGS_UPDATE_IF_NOEXIST;
diff --git a/samples/bpf/xdp_monitor_kern.c b/samples/bpf/xdp_monitor_kern.=
c
index ad10fe700d7d..59926c59ff4a 100644
--- a/samples/bpf/xdp_monitor_kern.c
+++ b/samples/bpf/xdp_monitor_kern.c
@@ -4,7 +4,7 @@
  * XDP monitor tool, based on tracepoints
  */
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct bpf_map_def SEC("maps") redirect_err_cnt =3D {
 	.type =3D BPF_MAP_TYPE_PERCPU_ARRAY,
diff --git a/samples/bpf/xdp_redirect_cpu_kern.c b/samples/bpf/xdp_redirect=
_cpu_kern.c
index cfcc31e51197..313a8fe6d125 100644
--- a/samples/bpf/xdp_redirect_cpu_kern.c
+++ b/samples/bpf/xdp_redirect_cpu_kern.c
@@ -12,7 +12,7 @@
 #include <uapi/linux/udp.h>
=20
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "hash_func01.h"
=20
 #define MAX_CPUS 64 /* WARNING - sync with _user.c */
diff --git a/samples/bpf/xdp_redirect_cpu_user.c b/samples/bpf/xdp_redirect=
_cpu_user.c
index 79a2fb7d16cb..15bdf047a222 100644
--- a/samples/bpf/xdp_redirect_cpu_user.c
+++ b/samples/bpf/xdp_redirect_cpu_user.c
@@ -30,7 +30,7 @@ static const char *__doc__ =3D
 #define MAX_PROG 6
=20
 #include <bpf/bpf.h>
-#include "libbpf.h"
+#include <bpf/libbpf.h>
=20
 #include "bpf_util.h"
=20
diff --git a/samples/bpf/xdp_redirect_kern.c b/samples/bpf/xdp_redirect_ker=
n.c
index 1f0b7d05abb2..d26ec3aa215e 100644
--- a/samples/bpf/xdp_redirect_kern.c
+++ b/samples/bpf/xdp_redirect_kern.c
@@ -17,7 +17,7 @@
 #include <linux/if_vlan.h>
 #include <linux/ip.h>
 #include <linux/ipv6.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct {
 	__uint(type, BPF_MAP_TYPE_ARRAY);
diff --git a/samples/bpf/xdp_redirect_map_kern.c b/samples/bpf/xdp_redirect=
_map_kern.c
index 4631b484c432..6489352ab7a4 100644
--- a/samples/bpf/xdp_redirect_map_kern.c
+++ b/samples/bpf/xdp_redirect_map_kern.c
@@ -17,7 +17,7 @@
 #include <linux/if_vlan.h>
 #include <linux/ip.h>
 #include <linux/ipv6.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct {
 	__uint(type, BPF_MAP_TYPE_DEVMAP);
diff --git a/samples/bpf/xdp_redirect_map_user.c b/samples/bpf/xdp_redirect=
_map_user.c
index cc840661faab..35e16dee613e 100644
--- a/samples/bpf/xdp_redirect_map_user.c
+++ b/samples/bpf/xdp_redirect_map_user.c
@@ -17,7 +17,7 @@
=20
 #include "bpf_util.h"
 #include <bpf/bpf.h>
-#include "libbpf.h"
+#include <bpf/libbpf.h>
=20
 static int ifindex_in;
 static int ifindex_out;
diff --git a/samples/bpf/xdp_redirect_user.c b/samples/bpf/xdp_redirect_use=
r.c
index 71dff8e3382a..9ca2bf457cda 100644
--- a/samples/bpf/xdp_redirect_user.c
+++ b/samples/bpf/xdp_redirect_user.c
@@ -17,7 +17,7 @@
=20
 #include "bpf_util.h"
 #include <bpf/bpf.h>
-#include "libbpf.h"
+#include <bpf/libbpf.h>
=20
 static int ifindex_in;
 static int ifindex_out;
diff --git a/samples/bpf/xdp_router_ipv4_kern.c b/samples/bpf/xdp_router_ip=
v4_kern.c
index bf11efc8e949..b37ca2b13063 100644
--- a/samples/bpf/xdp_router_ipv4_kern.c
+++ b/samples/bpf/xdp_router_ipv4_kern.c
@@ -12,7 +12,7 @@
 #include <linux/if_vlan.h>
 #include <linux/ip.h>
 #include <linux/ipv6.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include <linux/slab.h>
 #include <net/ip_fib.h>
=20
diff --git a/samples/bpf/xdp_router_ipv4_user.c b/samples/bpf/xdp_router_ip=
v4_user.c
index fef286c5add2..c2da1b51ff95 100644
--- a/samples/bpf/xdp_router_ipv4_user.c
+++ b/samples/bpf/xdp_router_ipv4_user.c
@@ -21,7 +21,7 @@
 #include <sys/ioctl.h>
 #include <sys/syscall.h>
 #include "bpf_util.h"
-#include "libbpf.h"
+#include <bpf/libbpf.h>
 #include <sys/resource.h>
 #include <libgen.h>
=20
diff --git a/samples/bpf/xdp_rxq_info_kern.c b/samples/bpf/xdp_rxq_info_ker=
n.c
index 272d0f82a6b5..5e7459f9bf3e 100644
--- a/samples/bpf/xdp_rxq_info_kern.c
+++ b/samples/bpf/xdp_rxq_info_kern.c
@@ -6,7 +6,7 @@
 #include <uapi/linux/bpf.h>
 #include <uapi/linux/if_ether.h>
 #include <uapi/linux/in.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 /* Config setup from with userspace
  *
diff --git a/samples/bpf/xdp_rxq_info_user.c b/samples/bpf/xdp_rxq_info_use=
r.c
index fc4983fd6959..4fe47502ebed 100644
--- a/samples/bpf/xdp_rxq_info_user.c
+++ b/samples/bpf/xdp_rxq_info_user.c
@@ -22,8 +22,8 @@ static const char *__doc__ =3D " XDP RX-queue info extrac=
t example\n\n"
 #include <arpa/inet.h>
 #include <linux/if_link.h>
=20
-#include "bpf.h"
-#include "libbpf.h"
+#include <bpf/bpf.h>
+#include <bpf/libbpf.h>
 #include "bpf_util.h"
=20
 static int ifindex =3D -1;
diff --git a/samples/bpf/xdp_sample_pkts_kern.c b/samples/bpf/xdp_sample_pk=
ts_kern.c
index 6c7c7e0aaeda..33377289e2a8 100644
--- a/samples/bpf/xdp_sample_pkts_kern.c
+++ b/samples/bpf/xdp_sample_pkts_kern.c
@@ -2,7 +2,7 @@
 #include <linux/ptrace.h>
 #include <linux/version.h>
 #include <uapi/linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 #define SAMPLE_SIZE 64ul
 #define MAX_CPUS 128
diff --git a/samples/bpf/xdp_sample_pkts_user.c b/samples/bpf/xdp_sample_pk=
ts_user.c
index 8c1af1b7372d..991ef6f0880b 100644
--- a/samples/bpf/xdp_sample_pkts_user.c
+++ b/samples/bpf/xdp_sample_pkts_user.c
@@ -10,7 +10,7 @@
 #include <sys/sysinfo.h>
 #include <sys/ioctl.h>
 #include <signal.h>
-#include <libbpf.h>
+#include <bpf/libbpf.h>
 #include <bpf/bpf.h>
 #include <sys/resource.h>
 #include <libgen.h>
diff --git a/samples/bpf/xdp_tx_iptunnel_kern.c b/samples/bpf/xdp_tx_iptunn=
el_kern.c
index 6db450a5c1ca..575d57e4b8d6 100644
--- a/samples/bpf/xdp_tx_iptunnel_kern.c
+++ b/samples/bpf/xdp_tx_iptunnel_kern.c
@@ -16,7 +16,7 @@
 #include <linux/if_vlan.h>
 #include <linux/ip.h>
 #include <linux/ipv6.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "xdp_tx_iptunnel_common.h"
=20
 struct {
diff --git a/samples/bpf/xdp_tx_iptunnel_user.c b/samples/bpf/xdp_tx_iptunn=
el_user.c
index 5f33b5530032..a419bee151a8 100644
--- a/samples/bpf/xdp_tx_iptunnel_user.c
+++ b/samples/bpf/xdp_tx_iptunnel_user.c
@@ -15,7 +15,7 @@
 #include <netinet/ether.h>
 #include <unistd.h>
 #include <time.h>
-#include "libbpf.h"
+#include <bpf/libbpf.h>
 #include <bpf/bpf.h>
 #include "bpf_util.h"
 #include "xdp_tx_iptunnel_common.h"
diff --git a/samples/bpf/xdpsock_kern.c b/samples/bpf/xdpsock_kern.c
index a06177c262cd..05430484375c 100644
--- a/samples/bpf/xdpsock_kern.c
+++ b/samples/bpf/xdpsock_kern.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "xdpsock.h"
=20
 /* This XDP program is only needed for the XDP_SHARED_UMEM mode.
diff --git a/samples/bpf/xdpsock_user.c b/samples/bpf/xdpsock_user.c
index d74c4c83fc93..0b5acd722306 100644
--- a/samples/bpf/xdpsock_user.c
+++ b/samples/bpf/xdpsock_user.c
@@ -30,10 +30,10 @@
 #include <time.h>
 #include <unistd.h>
=20
-#include "libbpf.h"
-#include "xsk.h"
-#include "xdpsock.h"
+#include <bpf/libbpf.h>
+#include <bpf/xsk.h>
 #include <bpf/bpf.h>
+#include "xdpsock.h"
=20
 #ifndef SOL_XDP
 #define SOL_XDP 283

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157909757639.1192265.16930011370158657444.stgit%40toke.dk=
.
