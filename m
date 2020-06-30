Return-Path: <clang-built-linux+bncBDCKNIVX54KBBU7P533QKGQE7C6OTXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id D38E120FFE3
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 00:08:20 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id z16sf13883202otj.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 15:08:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593554899; cv=pass;
        d=google.com; s=arc-20160816;
        b=cylt12eUofAuTZlG5pROZYhT2fQnIb530hu4C7OXvdQYJDGy2syU2U21fj25149wow
         C1Vq9oHIEnS96qhIDwxhqs8zFnkP3QFWpaNC6B/k5L64j+y+ntYKuf5HnWcTkD9rA2Fj
         QEGt76c/dkxqadKKPEREEzfW6nOREDdWMYYtY1SeNKqgqJfaOE9azrtUrp7MMDyh7d9p
         cA/fQKSc09NlG8sobYC3+HbKAauU+67STYNKllBZX4O3wjJB2tLGrpz6VCfATtL5W38E
         3DESnvSVyTqMp6UH+1Pro0pn4/k9aI8pPQfyJG8kTqRYf0cszLmu4g7xKTRW6V5L15To
         hm2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=thLMbZJ0nV8mjRRSCcHAsntIxz0ah78JvLlLbu6KD88=;
        b=FGGBrjyHgOkFPDXXjd3CKkPfmMmJ1iN48nDWvocySRBWGOSy+qDi/eLoxN9scA1VRi
         NnZscCbRy9IYEt1yN0Hex43gFXBQPOXPlDHJz5o8NkNLSYeHH5/YEM8q5oiLQlQbeDlv
         V0QME/o69RhJGNbrDwsXZLNPsauUYNSnzeYfFJ9m28qb+V3d1i6Rb4dM5CfE/G2kGryx
         8F6CNGGD43BoKYrxjUKyjuOXBLDu11teVKEbwFu6KQyYv0Z23EUwHE9kU76bgh1PjglN
         WOYs9mw4jZAlofK/S2f17q97arDyJGw2Ykucb8iDATUre7o4i7+7wG2ACYkBOyziMRGM
         sL/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gDKmgaxn;
       spf=pass (google.com: domain of 3nyn7xgyketqxqebkeweewbu.secsbqdw-rkybj-bydknweewbuwhekfi.sec@flex--haoluo.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3NYn7XgYKETQXQebkeWeeWbU.SecSbQdW-RkYbj-bYdknWeeWbUWhekfi.Sec@flex--haoluo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=thLMbZJ0nV8mjRRSCcHAsntIxz0ah78JvLlLbu6KD88=;
        b=TWa51ukJxSq4/X/TPLKBuQj3nO8Jkj4dgeHVTUf0+O5He8xhxUM6uxFu57PKgGR6PF
         a3q2jsq0+p01wR0e8ZiR5k448qIo5fdzsAp1SaegtPpMx/dSh5m3WV+EMBv2TJ1T5X2J
         n6JgATcd2/zpZevdnNxAnWSl3xAJbKDQ05cYA9mH0nXcjCXQjQdjPAKHIZokYtvB725H
         znBaXv6eqp7of9y8tAWkqqqJRp1ARcyXP0gvX86MxH90hN1z1Wm4HyV1KOh3C/q9r6I8
         rRAFK1TDth5U2VjtVnWfE1p2tXGgjKnM1DfAtATlmjRQ4xnQkRpgE3FcM+I8gLlXHNed
         P3kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=thLMbZJ0nV8mjRRSCcHAsntIxz0ah78JvLlLbu6KD88=;
        b=kjoePb9cj3O3Yh7e1qcMBDN9LB8cGl4ct2VrQwTezNQDSk8j8fh9cupC0wXXz6hUu6
         8bXF8wKadNwYTAv8nW9NzoFbDcu07CcnX/2SP0Gz0kCUjRFKjACU4lgxqLi+QLNWSiSw
         JAeQ+evXi9CgY4V3bvR8quQ8N2FZXAAf1Ac5Law6XhikPRh89grvMh+tOaVC+6peXSQV
         3xtyiuMGICjFNuB4dZwfxsOLYs9/wVnzv+2CU/jsbP/+UfFH+OFf6xBsyeDCrbBR+aYw
         J+TN2mi73PmbkGuA4OXSNkVB8V82pU1dTrDcyAP4PUWE7+u3xwnk2Sh2k63E5a9tVtDm
         1nNg==
X-Gm-Message-State: AOAM533pjDdI4nKSodB/EZywERiJJ4hcZMEMYDaRkk6Ljy9Z8DVooDqo
	B7dprDv6WKQaOJ/EObUTg2U=
X-Google-Smtp-Source: ABdhPJwuavwLfCgNpavo4/WQheTcOsEv53asGVFWl7UlD2raiA0nhiMqmw9XlwmM1Nw9z1iAycBwmQ==
X-Received: by 2002:a9d:2604:: with SMTP id a4mr20750817otb.334.1593554899704;
        Tue, 30 Jun 2020 15:08:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4e96:: with SMTP id c22ls50347oiy.2.gmail; Tue, 30 Jun
 2020 15:08:19 -0700 (PDT)
X-Received: by 2002:a17:90a:9a2:: with SMTP id 31mr24232840pjo.181.1593542966910;
        Tue, 30 Jun 2020 11:49:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593542966; cv=none;
        d=google.com; s=arc-20160816;
        b=n91cej8MMlkc33WVNzIBNRRS6gutAfqUE7uqrGbWuyEB86Ws3ez8ILDAZV6REwsQm9
         DN35cv6xhf1HV9mlvHAb6nsm36HQXhfDIaSxoovpkycYizbkpIl1B7OMc4EOEpW4LfCj
         W7CbAFGP+WbRtDherDHe01Jaow5njYGi6PuKFoW7NANHKGIsaW+Pcee/cxGcAC2I7i3P
         ej7WbVeluiC0VHvoNlTI/JbN6fWQ+VwP5X0nE3Kso+wHeSVOyktC13nQ3BRKBJCo9lam
         /WysqXyu450o1hG2iMl3A6cRRo4TF/2gZajbITr3YtI1Ao4S6YZo7xcDdwRKi8GG3tKL
         oWuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=LEHppYXCQPcRgd0zlbLe7CmHbNbqX0AwBnt1nKT8kmo=;
        b=PauPGvZ8KxsEXmg7tqNVZsllO7P3UCuUD+LWd1WiprcZ0USL2hJHd3K7/F935+cay8
         C9M6914Dbft1MRL+bfO3P1RwfsSNwJMRj86aZz47v5XATE9c0ec+KyqJaWSnVzYYl7Uo
         FYBcUidw4ypPHz2rul80WmHVlpcbO6IjatRQHRqgcdY6I/VR0mP7owc2eZbGBYbll40L
         6zEUoxyiYNHUQnx3ilkOfJ+FpbybM5Kqmh2U8ipm+jTRsL2/SpjcLXZ4Rlx/DcwbEPEF
         FM3UadOruMKUyFuRbYM3Xm2vdTzbg6MNIK/FeVQazqAxy8px03M86/hfeEU28t5JOzPU
         9dmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gDKmgaxn;
       spf=pass (google.com: domain of 3nyn7xgyketqxqebkeweewbu.secsbqdw-rkybj-bydknweewbuwhekfi.sec@flex--haoluo.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3NYn7XgYKETQXQebkeWeeWbU.SecSbQdW-RkYbj-bYdknWeeWbUWhekfi.Sec@flex--haoluo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id 89si132036pla.5.2020.06.30.11.49.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 11:49:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nyn7xgyketqxqebkeweewbu.secsbqdw-rkybj-bydknweewbuwhekfi.sec@flex--haoluo.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id u186so15287539qka.4
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 11:49:26 -0700 (PDT)
X-Received: by 2002:ad4:4105:: with SMTP id i5mr11143826qvp.170.1593542965986;
 Tue, 30 Jun 2020 11:49:25 -0700 (PDT)
Date: Tue, 30 Jun 2020 11:49:22 -0700
Message-Id: <20200630184922.455439-1-haoluo@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH bpf-next] selftests/bpf: Switch test_vmlinux to use hrtimer_range_start_ns.
From: "'Hao Luo' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: netdev@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kselftest@vger.kernel.org
Cc: sdf@google.com, Shuah Khan <shuah@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Andrii Nakryiko <andriin@fb.com>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	Hao Luo <haoluo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: haoluo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gDKmgaxn;       spf=pass
 (google.com: domain of 3nyn7xgyketqxqebkeweewbu.secsbqdw-rkybj-bydknweewbuwhekfi.sec@flex--haoluo.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3NYn7XgYKETQXQebkeWeeWbU.SecSbQdW-RkYbj-bYdknWeeWbUWhekfi.Sec@flex--haoluo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Hao Luo <haoluo@google.com>
Reply-To: Hao Luo <haoluo@google.com>
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

The test_vmlinux test uses hrtimer_nanosleep as hook to test tracing
programs. But it seems Clang may have done an aggressive optimization,
causing fentry and kprobe to not hook on this function properly on a
Clang build kernel.

A possible fix is switching to use a more reliable function, e.g. the
ones exported to kernel modules such as hrtimer_range_start_ns. After
we switch to using hrtimer_range_start_ns, the test passes again even
on a clang build kernel.

Tested:
 In a clang build kernel, the test fail even when the flags
 {fentry, kprobe}_called are set unconditionally in handle__kprobe()
 and handle__fentry(), which implies the programs do not hook on
 hrtimer_nanosleep() properly. This could be because clang's code
 transformation is too aggressive.

 test_vmlinux:PASS:skel_open 0 nsec
 test_vmlinux:PASS:skel_attach 0 nsec
 test_vmlinux:PASS:tp 0 nsec
 test_vmlinux:PASS:raw_tp 0 nsec
 test_vmlinux:PASS:tp_btf 0 nsec
 test_vmlinux:FAIL:kprobe not called
 test_vmlinux:FAIL:fentry not called

 After we switch to hrtimer_range_start_ns, the test passes.

 test_vmlinux:PASS:skel_open 0 nsec
 test_vmlinux:PASS:skel_attach 0 nsec
 test_vmlinux:PASS:tp 0 nsec
 test_vmlinux:PASS:raw_tp 0 nsec
 test_vmlinux:PASS:tp_btf 0 nsec
 test_vmlinux:PASS:kprobe 0 nsec
 test_vmlinux:PASS:fentry 0 nsec

Signed-off-by: Hao Luo <haoluo@google.com>
---
 tools/testing/selftests/bpf/progs/test_vmlinux.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/tools/testing/selftests/bpf/progs/test_vmlinux.c b/tools/testing/selftests/bpf/progs/test_vmlinux.c
index 5611b564d3b1..29fa09d6a6c6 100644
--- a/tools/testing/selftests/bpf/progs/test_vmlinux.c
+++ b/tools/testing/selftests/bpf/progs/test_vmlinux.c
@@ -63,20 +63,20 @@ int BPF_PROG(handle__tp_btf, struct pt_regs *regs, long id)
 	return 0;
 }
 
-SEC("kprobe/hrtimer_nanosleep")
-int BPF_KPROBE(handle__kprobe,
-	       ktime_t rqtp, enum hrtimer_mode mode, clockid_t clockid)
+SEC("kprobe/hrtimer_start_range_ns")
+int BPF_KPROBE(handle__kprobe, struct hrtimer *timer, ktime_t tim, u64 delta_ns,
+	       const enum hrtimer_mode mode)
 {
-	if (rqtp == MY_TV_NSEC)
+	if (tim == MY_TV_NSEC)
 		kprobe_called = true;
 	return 0;
 }
 
-SEC("fentry/hrtimer_nanosleep")
-int BPF_PROG(handle__fentry,
-	     ktime_t rqtp, enum hrtimer_mode mode, clockid_t clockid)
+SEC("fentry/hrtimer_start_range_ns")
+int BPF_PROG(handle__fentry, struct hrtimer *timer, ktime_t tim, u64 delta_ns,
+	     const enum hrtimer_mode mode)
 {
-	if (rqtp == MY_TV_NSEC)
+	if (tim == MY_TV_NSEC)
 		fentry_called = true;
 	return 0;
 }
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200630184922.455439-1-haoluo%40google.com.
