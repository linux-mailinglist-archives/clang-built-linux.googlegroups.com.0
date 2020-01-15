Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB3V37TYAKGQEMO4QSJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5C713C514
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 15:13:03 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id a4sf10363596pgq.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 06:13:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579097582; cv=pass;
        d=google.com; s=arc-20160816;
        b=PGRmVU2YgvZTcb1zr0GP6wzQwYhYKW0RZEepaHU2br4szf979ZasGuikV/0L0qEsmQ
         miafFY9jj1wn8kQkprxvWLaf2UzdO81sED3vkl3ePMgD5Y7iogCgoziUVwZK4R9gbf9R
         FWsWFnxtpNV48izMHq6ADuQTKwJAmJBgLZuMp33meJFrp4snpX3sN7umyG4QRdKOhBgv
         wYokew4d++eE6P6MQ6Cq0t8ozllDmdQRbSz5/dg5zRllaTREE4Ps2FO4bMtFSxF/KvSw
         Fj4K2ZMnhyPBH3m5JZp5djdxXm/N8PF1KJVds4sM7x26sMc0nNmIldF0e52QBOoUEKHp
         46BQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=JNyUn+BBjFkQjURp3DuMJe5REDMYeTNvXyWn7YLINiY=;
        b=GCBVNVBW5WX8auQZllvE7lkgkduFwZ/FIQHuw2RV6QnNPr2spjqSpEPN+XDizJm/g6
         489qEoOBaKU6C6Yah09RRP6eNI6AifnmvfQ6E0fPpdodUC7PK7eEkwUIfLn7FyiO3zuM
         UWm5GgduGpwnr2gvFIvwWq7O/h1rLI15gHYXhuKpOVE+9hZwMlX5laj/tdXzYoJhF+gv
         9T5ndW1AMK+erukzSHDsIZvuj1iG9LfdhCXXLUDTzdV0IataMEGTuV27y1CnfYAySK71
         sxVseslK2vjxncwInDpJnu5ox2qsXOZjrrQ83BK5sZtvhQpcnVQaDMMtvI2FGps6v7Cw
         sF8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=c7GyigO5;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JNyUn+BBjFkQjURp3DuMJe5REDMYeTNvXyWn7YLINiY=;
        b=eMvDS9KMZZlvnWqthFrjdFfYvj6CsqGXe3MGrpOqMcK1ErQIodg44zbwHNRfmxBznL
         2WLninNyzxuJoqBwLufbkpNWSaY6ydXBI3Bkm5qQ5qaTiKKzFIlZebEOg+jxuJbW+/1s
         JCx0SSnPmj/baR2E2oMMWEFwssC+FBsYsA/s+QSSNW3jA0s5j3EhQK2qA0ZNfAv9oHX7
         JB5lfEzO8fjZN5hINQvJr13PLUTCca5rEIDayE3T0EfJHMjZuwKTb1DjpDntwBBW3c8m
         iDX3Wdardi7kvFIMMODXmEl0Z3/4U0kmq3z5br9QoOqcLtKEIQUq5AVAtb2ephc9Hr6W
         +pWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JNyUn+BBjFkQjURp3DuMJe5REDMYeTNvXyWn7YLINiY=;
        b=KbUe7wOOxe6jrUo6dqClfgQRipupZDxY76HE7hlqlS3BV/hRX7UqqZeQ7wNp/Myioq
         3zd954NZE/zZyPnoBPxmJC05I9tj1kud7oU/L5oHKMzc+xE40v3pX2Yu09cpJ5MmXXRp
         2TA67ptDegRN2IHWiAt+F5asvIJh92l68TMLD21PrkT42i3QtFmSJ3l7AxCkfFITv9QZ
         lSoU9hZMpwt/c2HFPHsHtofX/85XJcusW6ozkr0lfSuPYeiePqh2rM1Mq7qOvPIYcsOW
         wLR8NfKXPII+8lJMPAiC0/bqK39XU59a05CuhzsP0Lkr2rz6sV1MC89YHkMYefDrB/zd
         SAKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXdOzxq8KQ6qFSZW+grf8Gp6nNGz4gTjodT0l2vyWGvLonAlAiG
	tvRHXNHfK0LIQLk4SOzTVDg=
X-Google-Smtp-Source: APXvYqxCvqw5XG0LPO8jKKcRplD206usGliR00hzy9NTuhE8+FxkCQvpAetGwvVu8z0ZRBfwzA0/XQ==
X-Received: by 2002:a62:1548:: with SMTP id 69mr32065876pfv.239.1579097582325;
        Wed, 15 Jan 2020 06:13:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:22e3:: with SMTP id s90ls733699pjc.0.canary-gmail;
 Wed, 15 Jan 2020 06:13:01 -0800 (PST)
X-Received: by 2002:a17:90a:e397:: with SMTP id b23mr35344712pjz.135.1579097581882;
        Wed, 15 Jan 2020 06:13:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579097581; cv=none;
        d=google.com; s=arc-20160816;
        b=zrkdcbG/VeHbzeWlBom7W26HCWDcRk8NEFdEJgSBD8Zu1qco0sPNKxcYe8mFhG3kMX
         f756wd63bmMLt8vxoMRDdXHRSxFprDxNscDzjx46SWI8oDPiKZ2kqOp1IgGejiYum7Qe
         YEO9y+3AuXiOdeQU/pGBkqQgtcJFAdwg390vUeE2Epe8JiMkDGXVbHG/e0m8Qo/sBv+Q
         uUFb4Htcq02IYXbNAqxTvRZGUwVdY99jdf8e/tmjrgNrUBB6M66pFiEgRtIpjZJmpben
         WX8Lj9uabJEIS/mDGYcddF4H+WFTZDd0flHxoAhC8RJZjtmu6rXCCfJexQyVl0SdH/wZ
         FTSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=h9ZiD3sK0pZ38Iz1oOPP5ltkgB01SfJK2tGlOSyn+dM=;
        b=RvlsNFUodDnUThTNtcKGcWOJDTKvmK0MgngS0zPh6hS6kHVsOrDXcxixPw/qFIJGQG
         XHqD1PzXPZAQvV47/KqTCNCeMbO9YjkNdrC6zz5uuvVzYKdBlhjw1UgbZj7mRwl3nVXZ
         DPiC/ndPbKXyLasp1L1/x5d7xWlncDiduOniO3K82EBtIxRI/Q5FHiGyHwfMe82LAiIF
         IDgVPO3S0jts3ykD1RDHKCHk/DQGIJGlH9xZPS7aoNZySzYIngGblIA0V/iT0b06z2Tr
         FMJP5B81udVrrrYKWx+GcyPGw/Gg3aF2+s0jbFkE+qBLyxKBaYgAudBvZ1qa/ng3PgGY
         k5Gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=c7GyigO5;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id v13si873699pga.4.2020.01.15.06.13.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 06:13:01 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-27-x8X0ZZkLMPe_y8Pvp8PLqg-1; Wed, 15 Jan 2020 09:12:58 -0500
Received: by mail-lj1-f199.google.com with SMTP id u9so4187402ljg.12
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 06:12:58 -0800 (PST)
X-Received: by 2002:a2e:a0d5:: with SMTP id f21mr1949214ljm.106.1579097576696;
        Wed, 15 Jan 2020 06:12:56 -0800 (PST)
X-Received: by 2002:a2e:a0d5:: with SMTP id f21mr1949127ljm.106.1579097575460;
        Wed, 15 Jan 2020 06:12:55 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id m21sm8931064lfh.53.2020.01.15.06.12.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 06:12:54 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 32FA01804D7; Wed, 15 Jan 2020 15:12:53 +0100 (CET)
Subject: [PATCH bpf-next v2 04/10] selftests: Use consistent include paths for
 libbpf
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
Date: Wed, 15 Jan 2020 15:12:53 +0100
Message-ID: <157909757308.1192265.1902125158369369145.stgit@toke.dk>
In-Reply-To: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: x8X0ZZkLMPe_y8Pvp8PLqg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=c7GyigO5;
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

From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>

Fix all selftests to include libbpf header files with the bpf/ prefix, to
be consistent with external users of the library. Also ensure that all
includes of exported libbpf header files (those that are exported on 'make
install' of the library) use bracketed includes instead of quoted.

To not break the build, keep the old include path until everything has been
changed to the new one; a subsequent patch will remove that.

Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are taken fro=
m selftests dir")
Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/testing/selftests/bpf/Makefile               |    2 +-
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
 127 files changed, 179 insertions(+), 179 deletions(-)

diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftests=
/bpf/Makefile
index 246d09ffb296..cd98ae875e30 100644
--- a/tools/testing/selftests/bpf/Makefile
+++ b/tools/testing/selftests/bpf/Makefile
@@ -186,7 +186,7 @@ MENDIAN=3D$(if $(IS_LITTLE_ENDIAN),-mlittle-endian,-mbi=
g-endian)
 CLANG_SYS_INCLUDES =3D $(call get_sys_includes,$(CLANG))
 BPF_CFLAGS =3D -g -D__TARGET_ARCH_$(SRCARCH) $(MENDIAN) 			\
 	     -I$(OUTPUT) -I$(CURDIR) -I$(CURDIR)/include/uapi		\
-	     -I$(APIDIR) -I$(BPFDIR) -I$(abspath $(OUTPUT)/../usr/include)
+	     -I$(APIDIR) -I$(LIBDIR) -I$(BPFDIR) -I$(abspath $(OUTPUT)/../usr/inc=
lude)
=20
 CLANG_CFLAGS =3D $(CLANG_SYS_INCLUDES) \
 	       -Wno-compare-distinct-pointer-types
diff --git a/tools/testing/selftests/bpf/bpf_tcp_helpers.h b/tools/testing/=
selftests/bpf/bpf_tcp_helpers.h
index 1052b9bb4320..6fee732f0297 100644
--- a/tools/testing/selftests/bpf/bpf_tcp_helpers.h
+++ b/tools/testing/selftests/bpf/bpf_tcp_helpers.h
@@ -4,8 +4,8 @@
=20
 #include <stdbool.h>
 #include <linux/types.h>
-#include <bpf_helpers.h>
-#include <bpf_core_read.h>
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_core_read.h>
=20
 struct sock_common {
 	unsigned char	skc_state;
diff --git a/tools/testing/selftests/bpf/bpf_trace_helpers.h b/tools/testin=
g/selftests/bpf/bpf_trace_helpers.h
index 1719cabc97b7..c6f1354d93fb 100644
--- a/tools/testing/selftests/bpf/bpf_trace_helpers.h
+++ b/tools/testing/selftests/bpf/bpf_trace_helpers.h
@@ -2,7 +2,7 @@
 #ifndef __BPF_TRACE_HELPERS_H
 #define __BPF_TRACE_HELPERS_H
=20
-#include <bpf_helpers.h>
+#include <bpf/bpf_helpers.h>
=20
 #define ___bpf_concat(a, b) a ## b
 #define ___bpf_apply(fn, n) ___bpf_concat(fn, n)
diff --git a/tools/testing/selftests/bpf/bpf_util.h b/tools/testing/selftes=
ts/bpf/bpf_util.h
index ec219f84e041..a3352a64c067 100644
--- a/tools/testing/selftests/bpf/bpf_util.h
+++ b/tools/testing/selftests/bpf/bpf_util.h
@@ -6,7 +6,7 @@
 #include <stdlib.h>
 #include <string.h>
 #include <errno.h>
-#include <libbpf.h> /* libbpf_num_possible_cpus */
+#include <bpf/libbpf.h> /* libbpf_num_possible_cpus */
=20
 static inline unsigned int bpf_num_possible_cpus(void)
 {
diff --git a/tools/testing/selftests/bpf/prog_tests/cpu_mask.c b/tools/test=
ing/selftests/bpf/prog_tests/cpu_mask.c
index 1fa1bdbaffa9..f7c7e25232be 100644
--- a/tools/testing/selftests/bpf/prog_tests/cpu_mask.c
+++ b/tools/testing/selftests/bpf/prog_tests/cpu_mask.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <test_progs.h>
 #include <bpf/btf.h>
-#include "libbpf_internal.h"
+#include "bpf/libbpf_internal.h"
=20
 static int duration =3D 0;
=20
diff --git a/tools/testing/selftests/bpf/prog_tests/perf_buffer.c b/tools/t=
esting/selftests/bpf/prog_tests/perf_buffer.c
index cf6c87936c69..1450ea2dd4cc 100644
--- a/tools/testing/selftests/bpf/prog_tests/perf_buffer.c
+++ b/tools/testing/selftests/bpf/prog_tests/perf_buffer.c
@@ -4,7 +4,7 @@
 #include <sched.h>
 #include <sys/socket.h>
 #include <test_progs.h>
-#include "libbpf_internal.h"
+#include "bpf/libbpf_internal.h"
=20
 static void on_sample(void *ctx, int cpu, void *data, __u32 size)
 {
diff --git a/tools/testing/selftests/bpf/progs/bpf_dctcp.c b/tools/testing/=
selftests/bpf/progs/bpf_dctcp.c
index 19650f43c192..b1e4d1835e11 100644
--- a/tools/testing/selftests/bpf/progs/bpf_dctcp.c
+++ b/tools/testing/selftests/bpf/progs/bpf_dctcp.c
@@ -8,7 +8,7 @@
=20
 #include <linux/bpf.h>
 #include <linux/types.h>
-#include <bpf_helpers.h>
+#include <bpf/bpf_helpers.h>
 #include <bpf_trace_helpers.h>
 #include "bpf_tcp_helpers.h"
=20
diff --git a/tools/testing/selftests/bpf/progs/bpf_flow.c b/tools/testing/s=
elftests/bpf/progs/bpf_flow.c
index 040a44206f29..9941f0ba471e 100644
--- a/tools/testing/selftests/bpf/progs/bpf_flow.c
+++ b/tools/testing/selftests/bpf/progs/bpf_flow.c
@@ -16,8 +16,8 @@
 #include <sys/socket.h>
 #include <linux/if_tunnel.h>
 #include <linux/mpls.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 int _version SEC("version") =3D 1;
 #define PROG(F) SEC(#F) int bpf_func_##F
diff --git a/tools/testing/selftests/bpf/progs/connect4_prog.c b/tools/test=
ing/selftests/bpf/progs/connect4_prog.c
index 1fd244d35ba9..75085119c5bb 100644
--- a/tools/testing/selftests/bpf/progs/connect4_prog.c
+++ b/tools/testing/selftests/bpf/progs/connect4_prog.c
@@ -9,8 +9,8 @@
 #include <linux/in6.h>
 #include <sys/socket.h>
=20
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 #define SRC_REWRITE_IP4		0x7f000004U
 #define DST_REWRITE_IP4		0x7f000001U
diff --git a/tools/testing/selftests/bpf/progs/connect6_prog.c b/tools/test=
ing/selftests/bpf/progs/connect6_prog.c
index 26397ab7b3c7..506d0f81a375 100644
--- a/tools/testing/selftests/bpf/progs/connect6_prog.c
+++ b/tools/testing/selftests/bpf/progs/connect6_prog.c
@@ -9,8 +9,8 @@
 #include <linux/in6.h>
 #include <sys/socket.h>
=20
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 #define SRC_REWRITE_IP6_0	0
 #define SRC_REWRITE_IP6_1	0
diff --git a/tools/testing/selftests/bpf/progs/dev_cgroup.c b/tools/testing=
/selftests/bpf/progs/dev_cgroup.c
index ce41a3475f27..8924e06bdef0 100644
--- a/tools/testing/selftests/bpf/progs/dev_cgroup.c
+++ b/tools/testing/selftests/bpf/progs/dev_cgroup.c
@@ -7,7 +7,7 @@
=20
 #include <linux/bpf.h>
 #include <linux/version.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 SEC("cgroup/dev")
 int bpf_prog1(struct bpf_cgroup_dev_ctx *ctx)
diff --git a/tools/testing/selftests/bpf/progs/fentry_test.c b/tools/testin=
g/selftests/bpf/progs/fentry_test.c
index 1ae1779a8e2e..38d3a82144ca 100644
--- a/tools/testing/selftests/bpf/progs/fentry_test.c
+++ b/tools/testing/selftests/bpf/progs/fentry_test.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (c) 2019 Facebook */
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "bpf_trace_helpers.h"
=20
 char _license[] SEC("license") =3D "GPL";
diff --git a/tools/testing/selftests/bpf/progs/fexit_bpf2bpf.c b/tools/test=
ing/selftests/bpf/progs/fexit_bpf2bpf.c
index 7c17ee159378..ec5710767d13 100644
--- a/tools/testing/selftests/bpf/progs/fexit_bpf2bpf.c
+++ b/tools/testing/selftests/bpf/progs/fexit_bpf2bpf.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (c) 2019 Facebook */
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "bpf_trace_helpers.h"
=20
 struct sk_buff {
diff --git a/tools/testing/selftests/bpf/progs/fexit_bpf2bpf_simple.c b/too=
ls/testing/selftests/bpf/progs/fexit_bpf2bpf_simple.c
index ac527b10dd80..92f3fa47cf40 100644
--- a/tools/testing/selftests/bpf/progs/fexit_bpf2bpf_simple.c
+++ b/tools/testing/selftests/bpf/progs/fexit_bpf2bpf_simple.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (c) 2019 Facebook */
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "bpf_trace_helpers.h"
=20
 struct sk_buff {
diff --git a/tools/testing/selftests/bpf/progs/fexit_test.c b/tools/testing=
/selftests/bpf/progs/fexit_test.c
index f0dd412ca128..348109b9ea07 100644
--- a/tools/testing/selftests/bpf/progs/fexit_test.c
+++ b/tools/testing/selftests/bpf/progs/fexit_test.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (c) 2019 Facebook */
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "bpf_trace_helpers.h"
=20
 char _license[] SEC("license") =3D "GPL";
diff --git a/tools/testing/selftests/bpf/progs/get_cgroup_id_kern.c b/tools=
/testing/selftests/bpf/progs/get_cgroup_id_kern.c
index 16c54ade6888..6b42db2fe391 100644
--- a/tools/testing/selftests/bpf/progs/get_cgroup_id_kern.c
+++ b/tools/testing/selftests/bpf/progs/get_cgroup_id_kern.c
@@ -2,7 +2,7 @@
 // Copyright (c) 2018 Facebook
=20
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct {
 	__uint(type, BPF_MAP_TYPE_ARRAY);
diff --git a/tools/testing/selftests/bpf/progs/kfree_skb.c b/tools/testing/=
selftests/bpf/progs/kfree_skb.c
index 046fae868f93..8f48a909f079 100644
--- a/tools/testing/selftests/bpf/progs/kfree_skb.c
+++ b/tools/testing/selftests/bpf/progs/kfree_skb.c
@@ -2,8 +2,8 @@
 // Copyright (c) 2019 Facebook
 #include <linux/bpf.h>
 #include <stdbool.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
 #include "bpf_trace_helpers.h"
=20
 char _license[] SEC("license") =3D "GPL";
diff --git a/tools/testing/selftests/bpf/progs/loop1.c b/tools/testing/self=
tests/bpf/progs/loop1.c
index 40ac722a9da5..50e66772c046 100644
--- a/tools/testing/selftests/bpf/progs/loop1.c
+++ b/tools/testing/selftests/bpf/progs/loop1.c
@@ -6,8 +6,8 @@
 #include <stddef.h>
 #include <stdbool.h>
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
-#include "bpf_tracing.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_tracing.h>
=20
 char _license[] SEC("license") =3D "GPL";
=20
diff --git a/tools/testing/selftests/bpf/progs/loop2.c b/tools/testing/self=
tests/bpf/progs/loop2.c
index bb80f29aa7f7..947bb7e988c2 100644
--- a/tools/testing/selftests/bpf/progs/loop2.c
+++ b/tools/testing/selftests/bpf/progs/loop2.c
@@ -6,8 +6,8 @@
 #include <stddef.h>
 #include <stdbool.h>
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
-#include "bpf_tracing.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_tracing.h>
=20
 char _license[] SEC("license") =3D "GPL";
=20
diff --git a/tools/testing/selftests/bpf/progs/loop3.c b/tools/testing/self=
tests/bpf/progs/loop3.c
index 2b9165a7afe1..76e93b31c14b 100644
--- a/tools/testing/selftests/bpf/progs/loop3.c
+++ b/tools/testing/selftests/bpf/progs/loop3.c
@@ -6,8 +6,8 @@
 #include <stddef.h>
 #include <stdbool.h>
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
-#include "bpf_tracing.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_tracing.h>
=20
 char _license[] SEC("license") =3D "GPL";
=20
diff --git a/tools/testing/selftests/bpf/progs/loop4.c b/tools/testing/self=
tests/bpf/progs/loop4.c
index 650859022771..b35337926d66 100644
--- a/tools/testing/selftests/bpf/progs/loop4.c
+++ b/tools/testing/selftests/bpf/progs/loop4.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2019 Facebook
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 char _license[] SEC("license") =3D "GPL";
=20
diff --git a/tools/testing/selftests/bpf/progs/loop5.c b/tools/testing/self=
tests/bpf/progs/loop5.c
index 28d1d668f07c..913791923fa3 100644
--- a/tools/testing/selftests/bpf/progs/loop5.c
+++ b/tools/testing/selftests/bpf/progs/loop5.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2019 Facebook
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #define barrier() __asm__ __volatile__("": : :"memory")
=20
 char _license[] SEC("license") =3D "GPL";
diff --git a/tools/testing/selftests/bpf/progs/netcnt_prog.c b/tools/testin=
g/selftests/bpf/progs/netcnt_prog.c
index 38a997852cad..d071adf178bd 100644
--- a/tools/testing/selftests/bpf/progs/netcnt_prog.c
+++ b/tools/testing/selftests/bpf/progs/netcnt_prog.c
@@ -2,7 +2,7 @@
 #include <linux/bpf.h>
 #include <linux/version.h>
=20
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "netcnt_common.h"
=20
 #define MAX_BPS	(3 * 1024 * 1024)
diff --git a/tools/testing/selftests/bpf/progs/pyperf.h b/tools/testing/sel=
ftests/bpf/progs/pyperf.h
index e186899954e9..cc615b82b56e 100644
--- a/tools/testing/selftests/bpf/progs/pyperf.h
+++ b/tools/testing/selftests/bpf/progs/pyperf.h
@@ -6,7 +6,7 @@
 #include <stddef.h>
 #include <stdbool.h>
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 #define FUNCTION_NAME_LEN 64
 #define FILE_NAME_LEN 128
diff --git a/tools/testing/selftests/bpf/progs/sample_map_ret0.c b/tools/te=
sting/selftests/bpf/progs/sample_map_ret0.c
index 0756303676ac..1612a32007b6 100644
--- a/tools/testing/selftests/bpf/progs/sample_map_ret0.c
+++ b/tools/testing/selftests/bpf/progs/sample_map_ret0.c
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause) */
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct bpf_map_def SEC("maps") htab =3D {
 	.type =3D BPF_MAP_TYPE_HASH,
diff --git a/tools/testing/selftests/bpf/progs/sendmsg4_prog.c b/tools/test=
ing/selftests/bpf/progs/sendmsg4_prog.c
index a91536b1c47e..092d9da536f3 100644
--- a/tools/testing/selftests/bpf/progs/sendmsg4_prog.c
+++ b/tools/testing/selftests/bpf/progs/sendmsg4_prog.c
@@ -5,8 +5,8 @@
 #include <linux/bpf.h>
 #include <sys/socket.h>
=20
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 #define SRC1_IP4		0xAC100001U /* 172.16.0.1 */
 #define SRC2_IP4		0x00000000U
diff --git a/tools/testing/selftests/bpf/progs/sendmsg6_prog.c b/tools/test=
ing/selftests/bpf/progs/sendmsg6_prog.c
index a68062820410..255a432bc163 100644
--- a/tools/testing/selftests/bpf/progs/sendmsg6_prog.c
+++ b/tools/testing/selftests/bpf/progs/sendmsg6_prog.c
@@ -5,8 +5,8 @@
 #include <linux/bpf.h>
 #include <sys/socket.h>
=20
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 #define SRC_REWRITE_IP6_0	0
 #define SRC_REWRITE_IP6_1	0
diff --git a/tools/testing/selftests/bpf/progs/socket_cookie_prog.c b/tools=
/testing/selftests/bpf/progs/socket_cookie_prog.c
index e4440fdd94cb..0cb5656a22b0 100644
--- a/tools/testing/selftests/bpf/progs/socket_cookie_prog.c
+++ b/tools/testing/selftests/bpf/progs/socket_cookie_prog.c
@@ -4,8 +4,8 @@
 #include <linux/bpf.h>
 #include <sys/socket.h>
=20
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 struct socket_cookie {
 	__u64 cookie_key;
diff --git a/tools/testing/selftests/bpf/progs/sockmap_parse_prog.c b/tools=
/testing/selftests/bpf/progs/sockmap_parse_prog.c
index 9390e0244259..a5c6d5903b22 100644
--- a/tools/testing/selftests/bpf/progs/sockmap_parse_prog.c
+++ b/tools/testing/selftests/bpf/progs/sockmap_parse_prog.c
@@ -1,6 +1,6 @@
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 int _version SEC("version") =3D 1;
=20
diff --git a/tools/testing/selftests/bpf/progs/sockmap_tcp_msg_prog.c b/too=
ls/testing/selftests/bpf/progs/sockmap_tcp_msg_prog.c
index e80484d98a1a..fdb4bf4408fa 100644
--- a/tools/testing/selftests/bpf/progs/sockmap_tcp_msg_prog.c
+++ b/tools/testing/selftests/bpf/progs/sockmap_tcp_msg_prog.c
@@ -1,7 +1,7 @@
 #include <linux/bpf.h>
=20
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 int _version SEC("version") =3D 1;
=20
diff --git a/tools/testing/selftests/bpf/progs/sockmap_verdict_prog.c b/too=
ls/testing/selftests/bpf/progs/sockmap_verdict_prog.c
index 433e23918a62..4797dc985064 100644
--- a/tools/testing/selftests/bpf/progs/sockmap_verdict_prog.c
+++ b/tools/testing/selftests/bpf/progs/sockmap_verdict_prog.c
@@ -1,6 +1,6 @@
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 int _version SEC("version") =3D 1;
=20
diff --git a/tools/testing/selftests/bpf/progs/sockopt_inherit.c b/tools/te=
sting/selftests/bpf/progs/sockopt_inherit.c
index dede0fcd6102..c6d428a8d785 100644
--- a/tools/testing/selftests/bpf/progs/sockopt_inherit.c
+++ b/tools/testing/selftests/bpf/progs/sockopt_inherit.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 char _license[] SEC("license") =3D "GPL";
 __u32 _version SEC("version") =3D 1;
diff --git a/tools/testing/selftests/bpf/progs/sockopt_multi.c b/tools/test=
ing/selftests/bpf/progs/sockopt_multi.c
index 4afd2595c08e..9d8c212dde9f 100644
--- a/tools/testing/selftests/bpf/progs/sockopt_multi.c
+++ b/tools/testing/selftests/bpf/progs/sockopt_multi.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <netinet/in.h>
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 char _license[] SEC("license") =3D "GPL";
 __u32 _version SEC("version") =3D 1;
diff --git a/tools/testing/selftests/bpf/progs/sockopt_sk.c b/tools/testing=
/selftests/bpf/progs/sockopt_sk.c
index 1bafbb944e37..d5a5eeb5fb52 100644
--- a/tools/testing/selftests/bpf/progs/sockopt_sk.c
+++ b/tools/testing/selftests/bpf/progs/sockopt_sk.c
@@ -3,7 +3,7 @@
 #include <netinet/in.h>
 #include <netinet/tcp.h>
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 char _license[] SEC("license") =3D "GPL";
 __u32 _version SEC("version") =3D 1;
diff --git a/tools/testing/selftests/bpf/progs/strobemeta.h b/tools/testing=
/selftests/bpf/progs/strobemeta.h
index 4bf16e0a1b0e..ad61b722a9de 100644
--- a/tools/testing/selftests/bpf/progs/strobemeta.h
+++ b/tools/testing/selftests/bpf/progs/strobemeta.h
@@ -8,7 +8,7 @@
 #include <linux/ptrace.h>
 #include <linux/sched.h>
 #include <linux/types.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 typedef uint32_t pid_t;
 struct task_struct {};
diff --git a/tools/testing/selftests/bpf/progs/tailcall1.c b/tools/testing/=
selftests/bpf/progs/tailcall1.c
index 63531e1a9fa4..1f407e65ae52 100644
--- a/tools/testing/selftests/bpf/progs/tailcall1.c
+++ b/tools/testing/selftests/bpf/progs/tailcall1.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/bpf.h>
=20
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct {
 	__uint(type, BPF_MAP_TYPE_PROG_ARRAY);
diff --git a/tools/testing/selftests/bpf/progs/tailcall2.c b/tools/testing/=
selftests/bpf/progs/tailcall2.c
index 21c85c477210..a093e739cf0e 100644
--- a/tools/testing/selftests/bpf/progs/tailcall2.c
+++ b/tools/testing/selftests/bpf/progs/tailcall2.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/bpf.h>
=20
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct {
 	__uint(type, BPF_MAP_TYPE_PROG_ARRAY);
diff --git a/tools/testing/selftests/bpf/progs/tailcall3.c b/tools/testing/=
selftests/bpf/progs/tailcall3.c
index 1ecae198b8c1..cabda877cf0a 100644
--- a/tools/testing/selftests/bpf/progs/tailcall3.c
+++ b/tools/testing/selftests/bpf/progs/tailcall3.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/bpf.h>
=20
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct {
 	__uint(type, BPF_MAP_TYPE_PROG_ARRAY);
diff --git a/tools/testing/selftests/bpf/progs/tailcall4.c b/tools/testing/=
selftests/bpf/progs/tailcall4.c
index 499388758119..f82075b47d7d 100644
--- a/tools/testing/selftests/bpf/progs/tailcall4.c
+++ b/tools/testing/selftests/bpf/progs/tailcall4.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/bpf.h>
=20
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct {
 	__uint(type, BPF_MAP_TYPE_PROG_ARRAY);
diff --git a/tools/testing/selftests/bpf/progs/tailcall5.c b/tools/testing/=
selftests/bpf/progs/tailcall5.c
index 49c64eb53f19..ce5450744fd4 100644
--- a/tools/testing/selftests/bpf/progs/tailcall5.c
+++ b/tools/testing/selftests/bpf/progs/tailcall5.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/bpf.h>
=20
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct {
 	__uint(type, BPF_MAP_TYPE_PROG_ARRAY);
diff --git a/tools/testing/selftests/bpf/progs/tcp_rtt.c b/tools/testing/se=
lftests/bpf/progs/tcp_rtt.c
index 2cf813a06b83..0cb3204ddb18 100644
--- a/tools/testing/selftests/bpf/progs/tcp_rtt.c
+++ b/tools/testing/selftests/bpf/progs/tcp_rtt.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 char _license[] SEC("license") =3D "GPL";
 __u32 _version SEC("version") =3D 1;
diff --git a/tools/testing/selftests/bpf/progs/test_adjust_tail.c b/tools/t=
esting/selftests/bpf/progs/test_adjust_tail.c
index 4cd5e860c903..b7fc85769bdc 100644
--- a/tools/testing/selftests/bpf/progs/test_adjust_tail.c
+++ b/tools/testing/selftests/bpf/progs/test_adjust_tail.c
@@ -7,7 +7,7 @@
  */
 #include <linux/bpf.h>
 #include <linux/if_ether.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 int _version SEC("version") =3D 1;
=20
diff --git a/tools/testing/selftests/bpf/progs/test_attach_probe.c b/tools/=
testing/selftests/bpf/progs/test_attach_probe.c
index 221b69700625..dd8fae6660ab 100644
--- a/tools/testing/selftests/bpf/progs/test_attach_probe.c
+++ b/tools/testing/selftests/bpf/progs/test_attach_probe.c
@@ -3,7 +3,7 @@
=20
 #include <linux/ptrace.h>
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 int kprobe_res =3D 0;
 int kretprobe_res =3D 0;
diff --git a/tools/testing/selftests/bpf/progs/test_btf_haskv.c b/tools/tes=
ting/selftests/bpf/progs/test_btf_haskv.c
index 62ad7e22105e..88b0566da13d 100644
--- a/tools/testing/selftests/bpf/progs/test_btf_haskv.c
+++ b/tools/testing/selftests/bpf/progs/test_btf_haskv.c
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /* Copyright (c) 2018 Facebook */
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "bpf_legacy.h"
=20
 int _version SEC("version") =3D 1;
diff --git a/tools/testing/selftests/bpf/progs/test_btf_newkv.c b/tools/tes=
ting/selftests/bpf/progs/test_btf_newkv.c
index fb8d91a1dbe0..a924e53c8e9d 100644
--- a/tools/testing/selftests/bpf/progs/test_btf_newkv.c
+++ b/tools/testing/selftests/bpf/progs/test_btf_newkv.c
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /* Copyright (c) 2018 Facebook */
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "bpf_legacy.h"
=20
 int _version SEC("version") =3D 1;
diff --git a/tools/testing/selftests/bpf/progs/test_btf_nokv.c b/tools/test=
ing/selftests/bpf/progs/test_btf_nokv.c
index 3f4422044759..983aedd1c072 100644
--- a/tools/testing/selftests/bpf/progs/test_btf_nokv.c
+++ b/tools/testing/selftests/bpf/progs/test_btf_nokv.c
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /* Copyright (c) 2018 Facebook */
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 int _version SEC("version") =3D 1;
=20
diff --git a/tools/testing/selftests/bpf/progs/test_core_extern.c b/tools/t=
esting/selftests/bpf/progs/test_core_extern.c
index 9bfc91d9d004..3ac3603ad53d 100644
--- a/tools/testing/selftests/bpf/progs/test_core_extern.c
+++ b/tools/testing/selftests/bpf/progs/test_core_extern.c
@@ -5,7 +5,7 @@
 #include <stdbool.h>
 #include <linux/ptrace.h>
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 /* non-existing BPF helper, to test dead code elimination */
 static int (*bpf_missing_helper)(const void *arg1, int arg2) =3D (void *) =
999;
diff --git a/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c b/t=
ools/testing/selftests/bpf/progs/test_core_reloc_arrays.c
index 053b86f6b53f..51b3f79df523 100644
--- a/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c
+++ b/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c
@@ -3,8 +3,8 @@
=20
 #include <linux/bpf.h>
 #include <stdint.h>
-#include "bpf_helpers.h"
-#include "bpf_core_read.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_core_read.h>
=20
 char _license[] SEC("license") =3D "GPL";
=20
diff --git a/tools/testing/selftests/bpf/progs/test_core_reloc_bitfields_di=
rect.c b/tools/testing/selftests/bpf/progs/test_core_reloc_bitfields_direct=
.c
index edc0f7c9e56d..56aec20212b5 100644
--- a/tools/testing/selftests/bpf/progs/test_core_reloc_bitfields_direct.c
+++ b/tools/testing/selftests/bpf/progs/test_core_reloc_bitfields_direct.c
@@ -3,8 +3,8 @@
=20
 #include <linux/bpf.h>
 #include <stdint.h>
-#include "bpf_helpers.h"
-#include "bpf_core_read.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_core_read.h>
=20
 char _license[] SEC("license") =3D "GPL";
=20
diff --git a/tools/testing/selftests/bpf/progs/test_core_reloc_bitfields_pr=
obed.c b/tools/testing/selftests/bpf/progs/test_core_reloc_bitfields_probed=
.c
index 6c20e433558b..ab1e647aeb31 100644
--- a/tools/testing/selftests/bpf/progs/test_core_reloc_bitfields_probed.c
+++ b/tools/testing/selftests/bpf/progs/test_core_reloc_bitfields_probed.c
@@ -3,8 +3,8 @@
=20
 #include <linux/bpf.h>
 #include <stdint.h>
-#include "bpf_helpers.h"
-#include "bpf_core_read.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_core_read.h>
=20
 char _license[] SEC("license") =3D "GPL";
=20
diff --git a/tools/testing/selftests/bpf/progs/test_core_reloc_existence.c =
b/tools/testing/selftests/bpf/progs/test_core_reloc_existence.c
index 1b7f0ae49cfb..7e45e2bdf6cd 100644
--- a/tools/testing/selftests/bpf/progs/test_core_reloc_existence.c
+++ b/tools/testing/selftests/bpf/progs/test_core_reloc_existence.c
@@ -3,8 +3,8 @@
=20
 #include <linux/bpf.h>
 #include <stdint.h>
-#include "bpf_helpers.h"
-#include "bpf_core_read.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_core_read.h>
=20
 char _license[] SEC("license") =3D "GPL";
=20
diff --git a/tools/testing/selftests/bpf/progs/test_core_reloc_flavors.c b/=
tools/testing/selftests/bpf/progs/test_core_reloc_flavors.c
index b5dbeef540fd..525acc2f841b 100644
--- a/tools/testing/selftests/bpf/progs/test_core_reloc_flavors.c
+++ b/tools/testing/selftests/bpf/progs/test_core_reloc_flavors.c
@@ -3,8 +3,8 @@
=20
 #include <linux/bpf.h>
 #include <stdint.h>
-#include "bpf_helpers.h"
-#include "bpf_core_read.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_core_read.h>
=20
 char _license[] SEC("license") =3D "GPL";
=20
diff --git a/tools/testing/selftests/bpf/progs/test_core_reloc_ints.c b/too=
ls/testing/selftests/bpf/progs/test_core_reloc_ints.c
index c78ab6d28a14..6b5290739806 100644
--- a/tools/testing/selftests/bpf/progs/test_core_reloc_ints.c
+++ b/tools/testing/selftests/bpf/progs/test_core_reloc_ints.c
@@ -3,8 +3,8 @@
=20
 #include <linux/bpf.h>
 #include <stdint.h>
-#include "bpf_helpers.h"
-#include "bpf_core_read.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_core_read.h>
=20
 char _license[] SEC("license") =3D "GPL";
=20
diff --git a/tools/testing/selftests/bpf/progs/test_core_reloc_kernel.c b/t=
ools/testing/selftests/bpf/progs/test_core_reloc_kernel.c
index 270de441b60a..aba928fd60d3 100644
--- a/tools/testing/selftests/bpf/progs/test_core_reloc_kernel.c
+++ b/tools/testing/selftests/bpf/progs/test_core_reloc_kernel.c
@@ -3,8 +3,8 @@
=20
 #include <linux/bpf.h>
 #include <stdint.h>
-#include "bpf_helpers.h"
-#include "bpf_core_read.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_core_read.h>
=20
 char _license[] SEC("license") =3D "GPL";
=20
diff --git a/tools/testing/selftests/bpf/progs/test_core_reloc_misc.c b/too=
ls/testing/selftests/bpf/progs/test_core_reloc_misc.c
index 292a5c4ee76a..d5756dbdef82 100644
--- a/tools/testing/selftests/bpf/progs/test_core_reloc_misc.c
+++ b/tools/testing/selftests/bpf/progs/test_core_reloc_misc.c
@@ -3,8 +3,8 @@
=20
 #include <linux/bpf.h>
 #include <stdint.h>
-#include "bpf_helpers.h"
-#include "bpf_core_read.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_core_read.h>
=20
 char _license[] SEC("license") =3D "GPL";
=20
diff --git a/tools/testing/selftests/bpf/progs/test_core_reloc_mods.c b/too=
ls/testing/selftests/bpf/progs/test_core_reloc_mods.c
index 0b28bfacc8fd..8b533db4a7a5 100644
--- a/tools/testing/selftests/bpf/progs/test_core_reloc_mods.c
+++ b/tools/testing/selftests/bpf/progs/test_core_reloc_mods.c
@@ -3,8 +3,8 @@
=20
 #include <linux/bpf.h>
 #include <stdint.h>
-#include "bpf_helpers.h"
-#include "bpf_core_read.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_core_read.h>
=20
 char _license[] SEC("license") =3D "GPL";
=20
diff --git a/tools/testing/selftests/bpf/progs/test_core_reloc_nesting.c b/=
tools/testing/selftests/bpf/progs/test_core_reloc_nesting.c
index 39279bf0c9db..2b4b6d49c677 100644
--- a/tools/testing/selftests/bpf/progs/test_core_reloc_nesting.c
+++ b/tools/testing/selftests/bpf/progs/test_core_reloc_nesting.c
@@ -3,8 +3,8 @@
=20
 #include <linux/bpf.h>
 #include <stdint.h>
-#include "bpf_helpers.h"
-#include "bpf_core_read.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_core_read.h>
=20
 char _license[] SEC("license") =3D "GPL";
=20
diff --git a/tools/testing/selftests/bpf/progs/test_core_reloc_primitives.c=
 b/tools/testing/selftests/bpf/progs/test_core_reloc_primitives.c
index ea57973cdd19..2a8975678aa6 100644
--- a/tools/testing/selftests/bpf/progs/test_core_reloc_primitives.c
+++ b/tools/testing/selftests/bpf/progs/test_core_reloc_primitives.c
@@ -3,8 +3,8 @@
=20
 #include <linux/bpf.h>
 #include <stdint.h>
-#include "bpf_helpers.h"
-#include "bpf_core_read.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_core_read.h>
=20
 char _license[] SEC("license") =3D "GPL";
=20
diff --git a/tools/testing/selftests/bpf/progs/test_core_reloc_ptr_as_arr.c=
 b/tools/testing/selftests/bpf/progs/test_core_reloc_ptr_as_arr.c
index d1eb59d4ea64..ca61a5183b88 100644
--- a/tools/testing/selftests/bpf/progs/test_core_reloc_ptr_as_arr.c
+++ b/tools/testing/selftests/bpf/progs/test_core_reloc_ptr_as_arr.c
@@ -3,8 +3,8 @@
=20
 #include <linux/bpf.h>
 #include <stdint.h>
-#include "bpf_helpers.h"
-#include "bpf_core_read.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_core_read.h>
=20
 char _license[] SEC("license") =3D "GPL";
=20
diff --git a/tools/testing/selftests/bpf/progs/test_core_reloc_size.c b/too=
ls/testing/selftests/bpf/progs/test_core_reloc_size.c
index 9e091124d3bd..d7fb6cfc7891 100644
--- a/tools/testing/selftests/bpf/progs/test_core_reloc_size.c
+++ b/tools/testing/selftests/bpf/progs/test_core_reloc_size.c
@@ -3,8 +3,8 @@
=20
 #include <linux/bpf.h>
 #include <stdint.h>
-#include "bpf_helpers.h"
-#include "bpf_core_read.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_core_read.h>
=20
 char _license[] SEC("license") =3D "GPL";
=20
diff --git a/tools/testing/selftests/bpf/progs/test_get_stack_rawtp.c b/too=
ls/testing/selftests/bpf/progs/test_get_stack_rawtp.c
index 6a4a8f57f174..29817a703984 100644
--- a/tools/testing/selftests/bpf/progs/test_get_stack_rawtp.c
+++ b/tools/testing/selftests/bpf/progs/test_get_stack_rawtp.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
=20
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 /* Permit pretty deep stack traces */
 #define MAX_STACK_RAWTP 100
diff --git a/tools/testing/selftests/bpf/progs/test_global_data.c b/tools/t=
esting/selftests/bpf/progs/test_global_data.c
index 32a6073acb99..dd7a4d3dbc0d 100644
--- a/tools/testing/selftests/bpf/progs/test_global_data.c
+++ b/tools/testing/selftests/bpf/progs/test_global_data.c
@@ -5,7 +5,7 @@
 #include <linux/pkt_cls.h>
 #include <string.h>
=20
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct {
 	__uint(type, BPF_MAP_TYPE_ARRAY);
diff --git a/tools/testing/selftests/bpf/progs/test_global_func1.c b/tools/=
testing/selftests/bpf/progs/test_global_func1.c
index 97d57d6e244e..880260f6d536 100644
--- a/tools/testing/selftests/bpf/progs/test_global_func1.c
+++ b/tools/testing/selftests/bpf/progs/test_global_func1.c
@@ -2,7 +2,7 @@
 /* Copyright (c) 2020 Facebook */
 #include <stddef.h>
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 #ifndef MAX_STACK
 #define MAX_STACK (512 - 3 * 32 + 8)
diff --git a/tools/testing/selftests/bpf/progs/test_global_func3.c b/tools/=
testing/selftests/bpf/progs/test_global_func3.c
index 514ecf9f51b0..86f0ecb304fc 100644
--- a/tools/testing/selftests/bpf/progs/test_global_func3.c
+++ b/tools/testing/selftests/bpf/progs/test_global_func3.c
@@ -2,7 +2,7 @@
 /* Copyright (c) 2020 Facebook */
 #include <stddef.h>
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 __attribute__ ((noinline))
 int f1(struct __sk_buff *skb)
diff --git a/tools/testing/selftests/bpf/progs/test_global_func5.c b/tools/=
testing/selftests/bpf/progs/test_global_func5.c
index 86787c03cea8..260c25b827ef 100644
--- a/tools/testing/selftests/bpf/progs/test_global_func5.c
+++ b/tools/testing/selftests/bpf/progs/test_global_func5.c
@@ -2,7 +2,7 @@
 /* Copyright (c) 2020 Facebook */
 #include <stddef.h>
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 __attribute__ ((noinline))
 int f1(struct __sk_buff *skb)
diff --git a/tools/testing/selftests/bpf/progs/test_global_func6.c b/tools/=
testing/selftests/bpf/progs/test_global_func6.c
index e215fb3e6f02..69e19c64e10b 100644
--- a/tools/testing/selftests/bpf/progs/test_global_func6.c
+++ b/tools/testing/selftests/bpf/progs/test_global_func6.c
@@ -2,7 +2,7 @@
 /* Copyright (c) 2020 Facebook */
 #include <stddef.h>
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 __attribute__ ((noinline))
 int f1(struct __sk_buff *skb)
diff --git a/tools/testing/selftests/bpf/progs/test_global_func7.c b/tools/=
testing/selftests/bpf/progs/test_global_func7.c
index ff98d93916fd..309b3f6136bd 100644
--- a/tools/testing/selftests/bpf/progs/test_global_func7.c
+++ b/tools/testing/selftests/bpf/progs/test_global_func7.c
@@ -2,7 +2,7 @@
 /* Copyright (c) 2020 Facebook */
 #include <stddef.h>
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 __attribute__ ((noinline))
 void foo(struct __sk_buff *skb)
diff --git a/tools/testing/selftests/bpf/progs/test_l4lb.c b/tools/testing/=
selftests/bpf/progs/test_l4lb.c
index 1d652ee8e73d..33493911d87a 100644
--- a/tools/testing/selftests/bpf/progs/test_l4lb.c
+++ b/tools/testing/selftests/bpf/progs/test_l4lb.c
@@ -17,9 +17,9 @@
 #include <linux/icmpv6.h>
 #include <linux/tcp.h>
 #include <linux/udp.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "test_iptunnel_common.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_endian.h>
=20
 int _version SEC("version") =3D 1;
=20
diff --git a/tools/testing/selftests/bpf/progs/test_l4lb_noinline.c b/tools=
/testing/selftests/bpf/progs/test_l4lb_noinline.c
index 2e4efe70b1e5..28351936a438 100644
--- a/tools/testing/selftests/bpf/progs/test_l4lb_noinline.c
+++ b/tools/testing/selftests/bpf/progs/test_l4lb_noinline.c
@@ -13,9 +13,9 @@
 #include <linux/icmpv6.h>
 #include <linux/tcp.h>
 #include <linux/udp.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "test_iptunnel_common.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_endian.h>
=20
 int _version SEC("version") =3D 1;
=20
diff --git a/tools/testing/selftests/bpf/progs/test_lirc_mode2_kern.c b/too=
ls/testing/selftests/bpf/progs/test_lirc_mode2_kern.c
index 4147130cc3b7..7a6620671a83 100644
--- a/tools/testing/selftests/bpf/progs/test_lirc_mode2_kern.c
+++ b/tools/testing/selftests/bpf/progs/test_lirc_mode2_kern.c
@@ -5,7 +5,7 @@
=20
 #include <linux/bpf.h>
 #include <linux/lirc.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 SEC("lirc_mode2")
 int bpf_decoder(unsigned int *sample)
diff --git a/tools/testing/selftests/bpf/progs/test_lwt_ip_encap.c b/tools/=
testing/selftests/bpf/progs/test_lwt_ip_encap.c
index c957d6dfe6d7..d6cb986e7533 100644
--- a/tools/testing/selftests/bpf/progs/test_lwt_ip_encap.c
+++ b/tools/testing/selftests/bpf/progs/test_lwt_ip_encap.c
@@ -4,8 +4,8 @@
 #include <linux/bpf.h>
 #include <linux/ip.h>
 #include <linux/ipv6.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 struct grehdr {
 	__be16 flags;
diff --git a/tools/testing/selftests/bpf/progs/test_lwt_seg6local.c b/tools=
/testing/selftests/bpf/progs/test_lwt_seg6local.c
index 41a3ebcd593d..48ff2b2ad5e7 100644
--- a/tools/testing/selftests/bpf/progs/test_lwt_seg6local.c
+++ b/tools/testing/selftests/bpf/progs/test_lwt_seg6local.c
@@ -3,8 +3,8 @@
 #include <errno.h>
 #include <linux/seg6_local.h>
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 /* Packet parsing state machine helpers. */
 #define cursor_advance(_cursor, _len) \
diff --git a/tools/testing/selftests/bpf/progs/test_map_in_map.c b/tools/te=
sting/selftests/bpf/progs/test_map_in_map.c
index 113226115365..1cfeb940cf9f 100644
--- a/tools/testing/selftests/bpf/progs/test_map_in_map.c
+++ b/tools/testing/selftests/bpf/progs/test_map_in_map.c
@@ -3,7 +3,7 @@
 #include <stddef.h>
 #include <linux/bpf.h>
 #include <linux/types.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct {
 	__uint(type, BPF_MAP_TYPE_ARRAY_OF_MAPS);
diff --git a/tools/testing/selftests/bpf/progs/test_map_lock.c b/tools/test=
ing/selftests/bpf/progs/test_map_lock.c
index bb7ce35f691b..b5c07ae7b68f 100644
--- a/tools/testing/selftests/bpf/progs/test_map_lock.c
+++ b/tools/testing/selftests/bpf/progs/test_map_lock.c
@@ -2,7 +2,7 @@
 // Copyright (c) 2019 Facebook
 #include <linux/bpf.h>
 #include <linux/version.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 #define VAR_NUM 16
=20
diff --git a/tools/testing/selftests/bpf/progs/test_mmap.c b/tools/testing/=
selftests/bpf/progs/test_mmap.c
index e808791b7047..6239596cd14e 100644
--- a/tools/testing/selftests/bpf/progs/test_mmap.c
+++ b/tools/testing/selftests/bpf/progs/test_mmap.c
@@ -3,7 +3,7 @@
=20
 #include <linux/bpf.h>
 #include <stdint.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 char _license[] SEC("license") =3D "GPL";
=20
diff --git a/tools/testing/selftests/bpf/progs/test_obj_id.c b/tools/testin=
g/selftests/bpf/progs/test_obj_id.c
index 3d30c02bdae9..98b9de2fafd0 100644
--- a/tools/testing/selftests/bpf/progs/test_obj_id.c
+++ b/tools/testing/selftests/bpf/progs/test_obj_id.c
@@ -4,7 +4,7 @@
 #include <stddef.h>
 #include <linux/bpf.h>
 #include <linux/pkt_cls.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 /* It is a dumb bpf program such that it must have no
  * issue to be loaded since testing the verifier is
diff --git a/tools/testing/selftests/bpf/progs/test_overhead.c b/tools/test=
ing/selftests/bpf/progs/test_overhead.c
index 48748297b860..bfe9fbcb9684 100644
--- a/tools/testing/selftests/bpf/progs/test_overhead.c
+++ b/tools/testing/selftests/bpf/progs/test_overhead.c
@@ -4,8 +4,8 @@
 #include <stddef.h>
 #include <linux/bpf.h>
 #include <linux/ptrace.h>
-#include "bpf_helpers.h"
-#include "bpf_tracing.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_tracing.h>
 #include "bpf_trace_helpers.h"
=20
 struct task_struct;
diff --git a/tools/testing/selftests/bpf/progs/test_perf_buffer.c b/tools/t=
esting/selftests/bpf/progs/test_perf_buffer.c
index 1fdc999031ac..ebfcc9f50c35 100644
--- a/tools/testing/selftests/bpf/progs/test_perf_buffer.c
+++ b/tools/testing/selftests/bpf/progs/test_perf_buffer.c
@@ -3,7 +3,7 @@
=20
 #include <linux/ptrace.h>
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #include "bpf_trace_helpers.h"
=20
 struct {
diff --git a/tools/testing/selftests/bpf/progs/test_pinning.c b/tools/testi=
ng/selftests/bpf/progs/test_pinning.c
index f20e7e00373f..4ef2630292b2 100644
--- a/tools/testing/selftests/bpf/progs/test_pinning.c
+++ b/tools/testing/selftests/bpf/progs/test_pinning.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
=20
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 int _version SEC("version") =3D 1;
=20
diff --git a/tools/testing/selftests/bpf/progs/test_pinning_invalid.c b/too=
ls/testing/selftests/bpf/progs/test_pinning_invalid.c
index 51b38abe7ba1..5412e0c732c7 100644
--- a/tools/testing/selftests/bpf/progs/test_pinning_invalid.c
+++ b/tools/testing/selftests/bpf/progs/test_pinning_invalid.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
=20
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 int _version SEC("version") =3D 1;
=20
diff --git a/tools/testing/selftests/bpf/progs/test_pkt_access.c b/tools/te=
sting/selftests/bpf/progs/test_pkt_access.c
index b77cebf71e66..7c9fcfd2b463 100644
--- a/tools/testing/selftests/bpf/progs/test_pkt_access.c
+++ b/tools/testing/selftests/bpf/progs/test_pkt_access.c
@@ -11,8 +11,8 @@
 #include <linux/in.h>
 #include <linux/tcp.h>
 #include <linux/pkt_cls.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 #define barrier() __asm__ __volatile__("": : :"memory")
 int _version SEC("version") =3D 1;
diff --git a/tools/testing/selftests/bpf/progs/test_pkt_md_access.c b/tools=
/testing/selftests/bpf/progs/test_pkt_md_access.c
index 1db2623021ad..610c74ea9f64 100644
--- a/tools/testing/selftests/bpf/progs/test_pkt_md_access.c
+++ b/tools/testing/selftests/bpf/progs/test_pkt_md_access.c
@@ -5,7 +5,7 @@
 #include <string.h>
 #include <linux/bpf.h>
 #include <linux/pkt_cls.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 int _version SEC("version") =3D 1;
=20
diff --git a/tools/testing/selftests/bpf/progs/test_probe_user.c b/tools/te=
sting/selftests/bpf/progs/test_probe_user.c
index 5b570969e5c5..d556b1572cc6 100644
--- a/tools/testing/selftests/bpf/progs/test_probe_user.c
+++ b/tools/testing/selftests/bpf/progs/test_probe_user.c
@@ -5,8 +5,8 @@
=20
 #include <netinet/in.h>
=20
-#include "bpf_helpers.h"
-#include "bpf_tracing.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_tracing.h>
 #include "bpf_trace_helpers.h"
=20
 static struct sockaddr_in old;
diff --git a/tools/testing/selftests/bpf/progs/test_queue_stack_map.h b/too=
ls/testing/selftests/bpf/progs/test_queue_stack_map.h
index 0e014d3b2b36..4dd9806ad73b 100644
--- a/tools/testing/selftests/bpf/progs/test_queue_stack_map.h
+++ b/tools/testing/selftests/bpf/progs/test_queue_stack_map.h
@@ -6,7 +6,7 @@
 #include <linux/if_ether.h>
 #include <linux/ip.h>
 #include <linux/pkt_cls.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 int _version SEC("version") =3D 1;
=20
diff --git a/tools/testing/selftests/bpf/progs/test_rdonly_maps.c b/tools/t=
esting/selftests/bpf/progs/test_rdonly_maps.c
index 52d94e8b214d..ecbeea2df259 100644
--- a/tools/testing/selftests/bpf/progs/test_rdonly_maps.c
+++ b/tools/testing/selftests/bpf/progs/test_rdonly_maps.c
@@ -3,7 +3,7 @@
=20
 #include <linux/ptrace.h>
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 static volatile const struct {
 	unsigned a[4];
diff --git a/tools/testing/selftests/bpf/progs/test_seg6_loop.c b/tools/tes=
ting/selftests/bpf/progs/test_seg6_loop.c
index 69880c1e7700..a7278f064368 100644
--- a/tools/testing/selftests/bpf/progs/test_seg6_loop.c
+++ b/tools/testing/selftests/bpf/progs/test_seg6_loop.c
@@ -3,8 +3,8 @@
 #include <errno.h>
 #include <linux/seg6_local.h>
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 /* Packet parsing state machine helpers. */
 #define cursor_advance(_cursor, _len) \
diff --git a/tools/testing/selftests/bpf/progs/test_select_reuseport_kern.c=
 b/tools/testing/selftests/bpf/progs/test_select_reuseport_kern.c
index b1f09f5bb1cf..d69a1f2bbbfd 100644
--- a/tools/testing/selftests/bpf/progs/test_select_reuseport_kern.c
+++ b/tools/testing/selftests/bpf/progs/test_select_reuseport_kern.c
@@ -11,8 +11,8 @@
 #include <linux/types.h>
 #include <linux/if_ether.h>
=20
-#include "bpf_endian.h"
-#include "bpf_helpers.h"
+#include <bpf/bpf_endian.h>
+#include <bpf/bpf_helpers.h>
 #include "test_select_reuseport_common.h"
=20
 int _version SEC("version") =3D 1;
diff --git a/tools/testing/selftests/bpf/progs/test_send_signal_kern.c b/to=
ols/testing/selftests/bpf/progs/test_send_signal_kern.c
index 0e6be01157e6..c6629b3f1429 100644
--- a/tools/testing/selftests/bpf/progs/test_send_signal_kern.c
+++ b/tools/testing/selftests/bpf/progs/test_send_signal_kern.c
@@ -2,7 +2,7 @@
 // Copyright (c) 2019 Facebook
 #include <linux/bpf.h>
 #include <linux/version.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct {
 	__uint(type, BPF_MAP_TYPE_ARRAY);
diff --git a/tools/testing/selftests/bpf/progs/test_sk_lookup_kern.c b/tool=
s/testing/selftests/bpf/progs/test_sk_lookup_kern.c
index cb49ccb707d1..d2b38fa6a5b0 100644
--- a/tools/testing/selftests/bpf/progs/test_sk_lookup_kern.c
+++ b/tools/testing/selftests/bpf/progs/test_sk_lookup_kern.c
@@ -12,8 +12,8 @@
 #include <linux/pkt_cls.h>
 #include <linux/tcp.h>
 #include <sys/socket.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 int _version SEC("version") =3D 1;
 char _license[] SEC("license") =3D "GPL";
diff --git a/tools/testing/selftests/bpf/progs/test_skb_cgroup_id_kern.c b/=
tools/testing/selftests/bpf/progs/test_skb_cgroup_id_kern.c
index 68cf9829f5a7..552f2090665c 100644
--- a/tools/testing/selftests/bpf/progs/test_skb_cgroup_id_kern.c
+++ b/tools/testing/selftests/bpf/progs/test_skb_cgroup_id_kern.c
@@ -6,7 +6,7 @@
=20
 #include <string.h>
=20
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 #define NUM_CGROUP_LEVELS	4
=20
diff --git a/tools/testing/selftests/bpf/progs/test_skb_ctx.c b/tools/testi=
ng/selftests/bpf/progs/test_skb_ctx.c
index e18da87fe84f..202de3938494 100644
--- a/tools/testing/selftests/bpf/progs/test_skb_ctx.c
+++ b/tools/testing/selftests/bpf/progs/test_skb_ctx.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
=20
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 int _version SEC("version") =3D 1;
 char _license[] SEC("license") =3D "GPL";
diff --git a/tools/testing/selftests/bpf/progs/test_skeleton.c b/tools/test=
ing/selftests/bpf/progs/test_skeleton.c
index 4f69aac5635f..de03a90f78ca 100644
--- a/tools/testing/selftests/bpf/progs/test_skeleton.c
+++ b/tools/testing/selftests/bpf/progs/test_skeleton.c
@@ -3,7 +3,7 @@
=20
 #include <stdbool.h>
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct s {
 	int a;
diff --git a/tools/testing/selftests/bpf/progs/test_sock_fields_kern.c b/to=
ols/testing/selftests/bpf/progs/test_sock_fields_kern.c
index a47b003623ef..9bcaa37f476a 100644
--- a/tools/testing/selftests/bpf/progs/test_sock_fields_kern.c
+++ b/tools/testing/selftests/bpf/progs/test_sock_fields_kern.c
@@ -5,8 +5,8 @@
 #include <netinet/in.h>
 #include <stdbool.h>
=20
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 enum bpf_addr_array_idx {
 	ADDR_SRV_IDX,
diff --git a/tools/testing/selftests/bpf/progs/test_spin_lock.c b/tools/tes=
ting/selftests/bpf/progs/test_spin_lock.c
index a43b999c8da2..0d31a3b3505f 100644
--- a/tools/testing/selftests/bpf/progs/test_spin_lock.c
+++ b/tools/testing/selftests/bpf/progs/test_spin_lock.c
@@ -2,7 +2,7 @@
 // Copyright (c) 2019 Facebook
 #include <linux/bpf.h>
 #include <linux/version.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct hmap_elem {
 	volatile int cnt;
diff --git a/tools/testing/selftests/bpf/progs/test_stacktrace_build_id.c b=
/tools/testing/selftests/bpf/progs/test_stacktrace_build_id.c
index f5638e26865d..0cf0134631b4 100644
--- a/tools/testing/selftests/bpf/progs/test_stacktrace_build_id.c
+++ b/tools/testing/selftests/bpf/progs/test_stacktrace_build_id.c
@@ -2,7 +2,7 @@
 // Copyright (c) 2018 Facebook
=20
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 #ifndef PERF_MAX_STACK_DEPTH
 #define PERF_MAX_STACK_DEPTH         127
diff --git a/tools/testing/selftests/bpf/progs/test_stacktrace_map.c b/tool=
s/testing/selftests/bpf/progs/test_stacktrace_map.c
index 3b7e1dca8829..00ed48672620 100644
--- a/tools/testing/selftests/bpf/progs/test_stacktrace_map.c
+++ b/tools/testing/selftests/bpf/progs/test_stacktrace_map.c
@@ -2,7 +2,7 @@
 // Copyright (c) 2018 Facebook
=20
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 #ifndef PERF_MAX_STACK_DEPTH
 #define PERF_MAX_STACK_DEPTH         127
diff --git a/tools/testing/selftests/bpf/progs/test_sysctl_loop1.c b/tools/=
testing/selftests/bpf/progs/test_sysctl_loop1.c
index d22e438198cf..458b0d69133e 100644
--- a/tools/testing/selftests/bpf/progs/test_sysctl_loop1.c
+++ b/tools/testing/selftests/bpf/progs/test_sysctl_loop1.c
@@ -7,7 +7,7 @@
 #include <linux/stddef.h>
 #include <linux/bpf.h>
=20
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 #ifndef ARRAY_SIZE
 #define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))
diff --git a/tools/testing/selftests/bpf/progs/test_sysctl_loop2.c b/tools/=
testing/selftests/bpf/progs/test_sysctl_loop2.c
index cb201cbe11e7..b2e6f9b0894d 100644
--- a/tools/testing/selftests/bpf/progs/test_sysctl_loop2.c
+++ b/tools/testing/selftests/bpf/progs/test_sysctl_loop2.c
@@ -7,7 +7,7 @@
 #include <linux/stddef.h>
 #include <linux/bpf.h>
=20
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 #ifndef ARRAY_SIZE
 #define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))
diff --git a/tools/testing/selftests/bpf/progs/test_sysctl_prog.c b/tools/t=
esting/selftests/bpf/progs/test_sysctl_prog.c
index 5cbbff416998..2d0b0b82a78a 100644
--- a/tools/testing/selftests/bpf/progs/test_sysctl_prog.c
+++ b/tools/testing/selftests/bpf/progs/test_sysctl_prog.c
@@ -7,7 +7,7 @@
 #include <linux/stddef.h>
 #include <linux/bpf.h>
=20
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 /* Max supported length of a string with unsigned long in base 10 (pow2 - =
1). */
 #define MAX_ULONG_STR_LEN 0xF
diff --git a/tools/testing/selftests/bpf/progs/test_tc_edt.c b/tools/testin=
g/selftests/bpf/progs/test_tc_edt.c
index 0961415ba477..bf28814bfde5 100644
--- a/tools/testing/selftests/bpf/progs/test_tc_edt.c
+++ b/tools/testing/selftests/bpf/progs/test_tc_edt.c
@@ -7,8 +7,8 @@
 #include <linux/ip.h>
 #include <linux/pkt_cls.h>
 #include <linux/tcp.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 /* the maximum delay we are willing to add (drop packets beyond that) */
 #define TIME_HORIZON_NS (2000 * 1000 * 1000)
diff --git a/tools/testing/selftests/bpf/progs/test_tc_tunnel.c b/tools/tes=
ting/selftests/bpf/progs/test_tc_tunnel.c
index 74370e7e286d..37bce7a7c394 100644
--- a/tools/testing/selftests/bpf/progs/test_tc_tunnel.c
+++ b/tools/testing/selftests/bpf/progs/test_tc_tunnel.c
@@ -17,8 +17,8 @@
 #include <linux/pkt_cls.h>
 #include <linux/types.h>
=20
-#include "bpf_endian.h"
-#include "bpf_helpers.h"
+#include <bpf/bpf_endian.h>
+#include <bpf/bpf_helpers.h>
=20
 static const int cfg_port =3D 8000;
=20
diff --git a/tools/testing/selftests/bpf/progs/test_tcp_check_syncookie_ker=
n.c b/tools/testing/selftests/bpf/progs/test_tcp_check_syncookie_kern.c
index d8803dfa8d32..47cbe2eeae43 100644
--- a/tools/testing/selftests/bpf/progs/test_tcp_check_syncookie_kern.c
+++ b/tools/testing/selftests/bpf/progs/test_tcp_check_syncookie_kern.c
@@ -13,8 +13,8 @@
 #include <sys/socket.h>
 #include <linux/tcp.h>
=20
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 struct bpf_map_def SEC("maps") results =3D {
 	.type =3D BPF_MAP_TYPE_ARRAY,
diff --git a/tools/testing/selftests/bpf/progs/test_tcp_estats.c b/tools/te=
sting/selftests/bpf/progs/test_tcp_estats.c
index 87b7d934ce73..adc83a54c352 100644
--- a/tools/testing/selftests/bpf/progs/test_tcp_estats.c
+++ b/tools/testing/selftests/bpf/progs/test_tcp_estats.c
@@ -36,7 +36,7 @@
 #include <linux/ipv6.h>
 #include <linux/version.h>
 #include <sys/socket.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 #define _(P) ({typeof(P) val =3D 0; bpf_probe_read_kernel(&val, sizeof(val=
), &P); val;})
 #define TCP_ESTATS_MAGIC 0xBAADBEEF
diff --git a/tools/testing/selftests/bpf/progs/test_tcpbpf_kern.c b/tools/t=
esting/selftests/bpf/progs/test_tcpbpf_kern.c
index 7fa4595d2b66..1f1966e86e9f 100644
--- a/tools/testing/selftests/bpf/progs/test_tcpbpf_kern.c
+++ b/tools/testing/selftests/bpf/progs/test_tcpbpf_kern.c
@@ -10,8 +10,8 @@
 #include <linux/types.h>
 #include <linux/socket.h>
 #include <linux/tcp.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
 #include "test_tcpbpf.h"
=20
 struct {
diff --git a/tools/testing/selftests/bpf/progs/test_tcpnotify_kern.c b/tool=
s/testing/selftests/bpf/progs/test_tcpnotify_kern.c
index 08346e7765d5..ac63410bb541 100644
--- a/tools/testing/selftests/bpf/progs/test_tcpnotify_kern.c
+++ b/tools/testing/selftests/bpf/progs/test_tcpnotify_kern.c
@@ -10,8 +10,8 @@
 #include <linux/types.h>
 #include <linux/socket.h>
 #include <linux/tcp.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
 #include "test_tcpnotify.h"
=20
 struct {
diff --git a/tools/testing/selftests/bpf/progs/test_tracepoint.c b/tools/te=
sting/selftests/bpf/progs/test_tracepoint.c
index 04bf084517e0..4b825ee122cf 100644
--- a/tools/testing/selftests/bpf/progs/test_tracepoint.c
+++ b/tools/testing/selftests/bpf/progs/test_tracepoint.c
@@ -2,7 +2,7 @@
 // Copyright (c) 2017 Facebook
=20
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 /* taken from /sys/kernel/debug/tracing/events/sched/sched_switch/format *=
/
 struct sched_switch_args {
diff --git a/tools/testing/selftests/bpf/progs/test_tunnel_kern.c b/tools/t=
esting/selftests/bpf/progs/test_tunnel_kern.c
index 504df69c83df..f48dbfe24ddc 100644
--- a/tools/testing/selftests/bpf/progs/test_tunnel_kern.c
+++ b/tools/testing/selftests/bpf/progs/test_tunnel_kern.c
@@ -19,8 +19,8 @@
 #include <linux/socket.h>
 #include <linux/pkt_cls.h>
 #include <linux/erspan.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 #define ERROR(ret) do {\
 		char fmt[] =3D "ERROR line:%d ret:%d\n";\
diff --git a/tools/testing/selftests/bpf/progs/test_verif_scale1.c b/tools/=
testing/selftests/bpf/progs/test_verif_scale1.c
index f3236ce35f31..d38153dab3dd 100644
--- a/tools/testing/selftests/bpf/progs/test_verif_scale1.c
+++ b/tools/testing/selftests/bpf/progs/test_verif_scale1.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2019 Facebook
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #define ATTR __attribute__((noinline))
 #include "test_jhash.h"
=20
diff --git a/tools/testing/selftests/bpf/progs/test_verif_scale2.c b/tools/=
testing/selftests/bpf/progs/test_verif_scale2.c
index 9897150ed516..f024154c7be7 100644
--- a/tools/testing/selftests/bpf/progs/test_verif_scale2.c
+++ b/tools/testing/selftests/bpf/progs/test_verif_scale2.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2019 Facebook
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #define ATTR __always_inline
 #include "test_jhash.h"
=20
diff --git a/tools/testing/selftests/bpf/progs/test_verif_scale3.c b/tools/=
testing/selftests/bpf/progs/test_verif_scale3.c
index 1848da04ea41..9beb5bf80373 100644
--- a/tools/testing/selftests/bpf/progs/test_verif_scale3.c
+++ b/tools/testing/selftests/bpf/progs/test_verif_scale3.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2019 Facebook
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
 #define ATTR __attribute__((noinline))
 #include "test_jhash.h"
=20
diff --git a/tools/testing/selftests/bpf/progs/test_xdp.c b/tools/testing/s=
elftests/bpf/progs/test_xdp.c
index 0941c655b07b..31f9bce37491 100644
--- a/tools/testing/selftests/bpf/progs/test_xdp.c
+++ b/tools/testing/selftests/bpf/progs/test_xdp.c
@@ -16,8 +16,8 @@
 #include <linux/tcp.h>
 #include <linux/pkt_cls.h>
 #include <sys/socket.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
 #include "test_iptunnel_common.h"
=20
 int _version SEC("version") =3D 1;
diff --git a/tools/testing/selftests/bpf/progs/test_xdp_loop.c b/tools/test=
ing/selftests/bpf/progs/test_xdp_loop.c
index 97175f73c3fe..fcabcda30ba3 100644
--- a/tools/testing/selftests/bpf/progs/test_xdp_loop.c
+++ b/tools/testing/selftests/bpf/progs/test_xdp_loop.c
@@ -12,8 +12,8 @@
 #include <linux/tcp.h>
 #include <linux/pkt_cls.h>
 #include <sys/socket.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
 #include "test_iptunnel_common.h"
=20
 int _version SEC("version") =3D 1;
diff --git a/tools/testing/selftests/bpf/progs/test_xdp_meta.c b/tools/test=
ing/selftests/bpf/progs/test_xdp_meta.c
index 8d0182650653..a7c4a7d49fe6 100644
--- a/tools/testing/selftests/bpf/progs/test_xdp_meta.c
+++ b/tools/testing/selftests/bpf/progs/test_xdp_meta.c
@@ -2,7 +2,7 @@
 #include <linux/if_ether.h>
 #include <linux/pkt_cls.h>
=20
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 #define __round_mask(x, y) ((__typeof__(x))((y) - 1))
 #define round_up(x, y) ((((x) - 1) | __round_mask(x, y)) + 1)
diff --git a/tools/testing/selftests/bpf/progs/test_xdp_noinline.c b/tools/=
testing/selftests/bpf/progs/test_xdp_noinline.c
index f95bc1a17667..8beecec166d9 100644
--- a/tools/testing/selftests/bpf/progs/test_xdp_noinline.c
+++ b/tools/testing/selftests/bpf/progs/test_xdp_noinline.c
@@ -13,8 +13,8 @@
 #include <linux/icmpv6.h>
 #include <linux/tcp.h>
 #include <linux/udp.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 static __u32 rol32(__u32 word, unsigned int shift)
 {
diff --git a/tools/testing/selftests/bpf/progs/test_xdp_redirect.c b/tools/=
testing/selftests/bpf/progs/test_xdp_redirect.c
index ef9e704be140..a5337cd9400b 100644
--- a/tools/testing/selftests/bpf/progs/test_xdp_redirect.c
+++ b/tools/testing/selftests/bpf/progs/test_xdp_redirect.c
@@ -10,7 +10,7 @@
  * General Public License for more details.
  */
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 int _version SEC("version") =3D 1;
=20
diff --git a/tools/testing/selftests/bpf/progs/test_xdp_vlan.c b/tools/test=
ing/selftests/bpf/progs/test_xdp_vlan.c
index 365a7d2d9f5c..134768f6b788 100644
--- a/tools/testing/selftests/bpf/progs/test_xdp_vlan.c
+++ b/tools/testing/selftests/bpf/progs/test_xdp_vlan.c
@@ -22,8 +22,8 @@
 #include <linux/in.h>
 #include <linux/pkt_cls.h>
=20
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 /* linux/if_vlan.h have not exposed this as UAPI, thus mirror some here
  *
diff --git a/tools/testing/selftests/bpf/progs/xdp_dummy.c b/tools/testing/=
selftests/bpf/progs/xdp_dummy.c
index 43b0ef1001ed..ea25e8881992 100644
--- a/tools/testing/selftests/bpf/progs/xdp_dummy.c
+++ b/tools/testing/selftests/bpf/progs/xdp_dummy.c
@@ -2,7 +2,7 @@
=20
 #define KBUILD_MODNAME "xdp_dummy"
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 SEC("xdp_dummy")
 int xdp_dummy_prog(struct xdp_md *ctx)
diff --git a/tools/testing/selftests/bpf/progs/xdp_redirect_map.c b/tools/t=
esting/selftests/bpf/progs/xdp_redirect_map.c
index 1c5f298d7196..d037262c8937 100644
--- a/tools/testing/selftests/bpf/progs/xdp_redirect_map.c
+++ b/tools/testing/selftests/bpf/progs/xdp_redirect_map.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
=20
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 struct {
 	__uint(type, BPF_MAP_TYPE_DEVMAP);
diff --git a/tools/testing/selftests/bpf/progs/xdp_tx.c b/tools/testing/sel=
ftests/bpf/progs/xdp_tx.c
index 57912e7c94b0..94e6c2b281cb 100644
--- a/tools/testing/selftests/bpf/progs/xdp_tx.c
+++ b/tools/testing/selftests/bpf/progs/xdp_tx.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
=20
 #include <linux/bpf.h>
-#include "bpf_helpers.h"
+#include <bpf/bpf_helpers.h>
=20
 SEC("tx")
 int xdp_tx(struct xdp_md *xdp)
diff --git a/tools/testing/selftests/bpf/progs/xdping_kern.c b/tools/testin=
g/selftests/bpf/progs/xdping_kern.c
index 112a2857f4e2..6b9ca40bd1f4 100644
--- a/tools/testing/selftests/bpf/progs/xdping_kern.c
+++ b/tools/testing/selftests/bpf/progs/xdping_kern.c
@@ -12,8 +12,8 @@
 #include <linux/if_vlan.h>
 #include <linux/ip.h>
=20
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 #include "xdping.h"
=20
diff --git a/tools/testing/selftests/bpf/test_cpp.cpp b/tools/testing/selft=
ests/bpf/test_cpp.cpp
index 6fe23a10d48a..a8d2e9a87fbf 100644
--- a/tools/testing/selftests/bpf/test_cpp.cpp
+++ b/tools/testing/selftests/bpf/test_cpp.cpp
@@ -1,8 +1,8 @@
 /* SPDX-License-Identifier: (LGPL-2.1 OR BSD-2-Clause) */
 #include <iostream>
-#include "libbpf.h"
-#include "bpf.h"
-#include "btf.h"
+#include <bpf/libbpf.h>
+#include <bpf/bpf.h>
+#include <bpf/btf.h>
 #include "test_core_extern.skel.h"
=20
 /* do nothing, just make sure we can link successfully */
diff --git a/tools/testing/selftests/bpf/test_hashmap.c b/tools/testing/sel=
ftests/bpf/test_hashmap.c
index b64094c981e3..c490e012c23f 100644
--- a/tools/testing/selftests/bpf/test_hashmap.c
+++ b/tools/testing/selftests/bpf/test_hashmap.c
@@ -8,7 +8,7 @@
 #include <stdio.h>
 #include <errno.h>
 #include <linux/err.h>
-#include "hashmap.h"
+#include "bpf/hashmap.h"
=20
 #define CHECK(condition, format...) ({					\
 	int __ret =3D !!(condition);					\
diff --git a/tools/testing/selftests/bpf/test_progs.h b/tools/testing/selft=
ests/bpf/test_progs.h
index de1fdaa4e7b4..a298cfd7d70d 100644
--- a/tools/testing/selftests/bpf/test_progs.h
+++ b/tools/testing/selftests/bpf/test_progs.h
@@ -35,7 +35,7 @@ typedef __u16 __sum16;
=20
 #include "test_iptunnel_common.h"
 #include "bpf_util.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_endian.h>
 #include "trace_helpers.h"
 #include "flow_dissector_load.h"
=20
diff --git a/tools/testing/selftests/bpf/test_sock.c b/tools/testing/selfte=
sts/bpf/test_sock.c
index 0e6652733462..52bf14955797 100644
--- a/tools/testing/selftests/bpf/test_sock.c
+++ b/tools/testing/selftests/bpf/test_sock.c
@@ -13,7 +13,7 @@
 #include <bpf/bpf.h>
=20
 #include "cgroup_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_endian.h>
 #include "bpf_rlimit.h"
 #include "bpf_util.h"
=20
diff --git a/tools/testing/selftests/bpf/test_sockmap_kern.h b/tools/testin=
g/selftests/bpf/test_sockmap_kern.h
index d008b41b7d8d..9b4d3a68a91a 100644
--- a/tools/testing/selftests/bpf/test_sockmap_kern.h
+++ b/tools/testing/selftests/bpf/test_sockmap_kern.h
@@ -12,8 +12,8 @@
 #include <linux/tcp.h>
 #include <linux/pkt_cls.h>
 #include <sys/socket.h>
-#include "bpf_helpers.h"
-#include "bpf_endian.h"
+#include <bpf/bpf_helpers.h>
+#include <bpf/bpf_endian.h>
=20
 /* Sockmap sample program connects a client and a backend together
  * using cgroups.
diff --git a/tools/testing/selftests/bpf/test_sysctl.c b/tools/testing/self=
tests/bpf/test_sysctl.c
index 40bd93a6e7ae..d196e2a4a6e0 100644
--- a/tools/testing/selftests/bpf/test_sysctl.c
+++ b/tools/testing/selftests/bpf/test_sysctl.c
@@ -13,7 +13,7 @@
 #include <bpf/bpf.h>
 #include <bpf/libbpf.h>
=20
-#include "bpf_endian.h"
+#include <bpf/bpf_endian.h>
 #include "bpf_rlimit.h"
 #include "bpf_util.h"
 #include "cgroup_helpers.h"
diff --git a/tools/testing/selftests/bpf/trace_helpers.h b/tools/testing/se=
lftests/bpf/trace_helpers.h
index aa4dcfe18050..0383c9b8adc1 100644
--- a/tools/testing/selftests/bpf/trace_helpers.h
+++ b/tools/testing/selftests/bpf/trace_helpers.h
@@ -2,7 +2,7 @@
 #ifndef __TRACE_HELPER_H
 #define __TRACE_HELPER_H
=20
-#include <libbpf.h>
+#include <bpf/libbpf.h>
=20
 struct ksym {
 	long addr;

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157909757308.1192265.1902125158369369145.stgit%40toke.dk.
