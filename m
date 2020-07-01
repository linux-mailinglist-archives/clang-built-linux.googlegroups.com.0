Return-Path: <clang-built-linux+bncBDCKNIVX54KBBD436P3QKGQEW7CDHKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DAF211234
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 19:53:20 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id d132sf2330577vke.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 10:53:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593625999; cv=pass;
        d=google.com; s=arc-20160816;
        b=A5kfWEIKWV2lOL+pXyBiRWs6+7kH6m7oJ+NGO6JtMzKb0kkldL+4WsNvfm75q2FTSC
         CMPX1bMwcT7DCKPCJnfHFzQ0rDIjPGpjBl2silJ+MmVFQFK9vbEFd4cNKKuae2WFs8w4
         Lup5b9UrLcmBnGHRfnvagS8UWkmFh0gaS0by5Qo1hBYp4y0JZtPyodtoAVKGO/Rvppz/
         6Tb5ok649eTP+AfmkyRZ81Kt/VmHnaIKHi9lNlGgUMx9xyXo3ExyMrBAemCFDV5xA9qt
         jK4FH4Y6GoZdvQnGfxTzO4b8jR2Qr34ekAn/NHrn6wSeZpw0WghOG00FrA81oeu+s8lz
         15Jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=hEpyFgOLJlHM1rHFR5reBLlqnhkoTSGEyGMgzvf9Ac4=;
        b=fZQPJxRFo1yIYp7+AMCBvAjWL/aP1iCrcegXqXXJNF8RtTey3fJnu8s79yKko1K0Av
         sljf91zUW8OPBGxAGBsDZg3gma34Xxb67k2xfaqH85m04eKta/pYNv3Not28k710zbDo
         V8s/sOZIn6fWm++hG5mTZJhJo2JDUEHyRYI+bg7VHeg27WNZRXYBAmJVCC2QBGiQ9XJv
         9yAx5fCGL0EdtmwFsA9xorNeVP0mIkwihT+wQc9dkK1SfP64ipPEBQSQH/asVcj8aLaE
         HNvCSv4uyFV82TcuMfPTVOjwMOvdEbz4od/hce+WHdc5XElDDZtVHgNoODT3Fj6T2O8G
         DQ9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ufhtwlfr;
       spf=pass (google.com: domain of 3js38xgykers81fclf7ff7c5.3fd3c1e7-2l9ck-c9elo7ff7c57iflgj.3fd@flex--haoluo.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3js38XgYKERs81FCLF7FF7C5.3FD3C1E7-2L9CK-C9ELO7FF7C57IFLGJ.3FD@flex--haoluo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=hEpyFgOLJlHM1rHFR5reBLlqnhkoTSGEyGMgzvf9Ac4=;
        b=ohHNlZJmZxjKiBzudci3ZrkA4oJ5BF3CcS2qLa/yNWt6VjAS75l4kDngffDxvTR3oy
         Pxsf88/a7OsFWcZXU5rPoRS7F+QdM+oL0UST6BjEZKgKDDHnqwNYLDIU49gizrhjR1VR
         S61owkb3uL7aDfGhKa4OEhmnXRXDyU2YruBmU2txtUrR+6cNHvW/z7URjT5GGd+axzLS
         FZaFwjx3erOAhPox9rAYNvW0A9Mmbc9KKm4E/Ih4B2LLcDygx0tgoVjw+pFNLphPlrco
         ulDJzy6lRg4PMRfLU5ySSdPERHO+jsYRt9jJ5l3AuL/eD5jfbGkn3Bwml8GhOxOhRXk6
         SZYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hEpyFgOLJlHM1rHFR5reBLlqnhkoTSGEyGMgzvf9Ac4=;
        b=Qk3n/YMgQSuEGoc6DDwTftw7246vZ/d4KzlEaDDQoQOCuh2Y+UP8/ZSAEwOrol+nfu
         +kfMe+w4ueXMEOZqCkBadke2OahD9OLuvKioIkTtIlYQj5YI00lGyOv1VuJkyoR793T+
         zIljCbGTbol7JKsI3ZNazV4Hst9SUB2xaLbukkkTVF49zCQpiEAZ3bJbbJXUD6aSDsh5
         GKydLMsqWODfZ3mqSitudUlUq812/kKYdI7Kbc516ovTxcnWhFi7dfMBWFjcnb3YmV0x
         IgJESEym1zzbijTiA1JfCbHx+40Q98VzeodkBTB/SSuN/BJPLLp3kuT22GOONgm72QFJ
         vc4g==
X-Gm-Message-State: AOAM532A+DCsrW42tnucak87IH8gUvXIfNlAmfUEZvwKUDgB9DqDJqpp
	vgKDxq2O5/YbvtO650Hq+oI=
X-Google-Smtp-Source: ABdhPJySSTfrXp6XDM5YfulM10DULU5jV0Mrb6/PTFjkZJfJUgXh3nlo9JotfQjjEAnci5fjVe9tdA==
X-Received: by 2002:a67:ea84:: with SMTP id f4mr20195156vso.113.1593625999161;
        Wed, 01 Jul 2020 10:53:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:21d0:: with SMTP id r16ls393644vsg.0.gmail; Wed, 01
 Jul 2020 10:53:18 -0700 (PDT)
X-Received: by 2002:a67:304e:: with SMTP id w75mr20724769vsw.192.1593625998614;
        Wed, 01 Jul 2020 10:53:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593625998; cv=none;
        d=google.com; s=arc-20160816;
        b=VXIsDDdk3dFTZ4grt6ldSnjYEfwRCOBkWPfD8khsylv/umzKduRnd8RYxLBGQNSNV4
         90xRJy0cKArF7mb6svd4dlkHp/uaBbzswSBqjH+UGDCZU8VwCMo7tnvO0vFx1EIMxsuS
         KTM08S/qMTSxBWTnNjycIAfEL0XiE0K1+Z4g2tMLxbrFzc8mp71orM8uC1uEitWueTsD
         OcDrVvDnXUiI+Um6r1lJTZ31NpEpnvaTfLrHjxljUM2IFG8FTcT1yeKQ0KdYTtc3rU27
         9EsFG8CgXaCH0zRyaWFkBo6ATT5sGOcoXDD+jEMAsbc5b3Qj+IhMYSFs/cuCjrxUSlbG
         EBVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=VB/KSdoSleNPyuddI4RHZwpZo8dMr4vfXtKSdI4JDW8=;
        b=la6tJHNArX5wo/nDdR77el4T296L3c+FeK8Ys69tFb1ZEt+/cmrBfKbXymXxXHR5AT
         Z8LTOtHorD9okL3l5EBFqX+BjZMThBVkKsOiZ7w/iwNkjP6CrtF7GIoWB42LWjZJj+1i
         Ph5umUhd+ICjJcIKEq8Su4/ac4dAKv6PG0DarrQ1bTygfqfgi0pqev+FfAIPCYo0AWFc
         YVoKX+Em8EOzbKVBEe4lq+btgteP4FdcYg+IWQiNcCGelwa5i25de6ajmNpUSumtAGpD
         jpBs6n2+5vj1fzBFD2KQD5MBHY+vp1uCT8Im/HFMUdctd01cL/2INhFRRkz65RNQs2A+
         BauA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ufhtwlfr;
       spf=pass (google.com: domain of 3js38xgykers81fclf7ff7c5.3fd3c1e7-2l9ck-c9elo7ff7c57iflgj.3fd@flex--haoluo.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3js38XgYKERs81FCLF7FF7C5.3FD3C1E7-2L9CK-C9ELO7FF7C57IFLGJ.3FD@flex--haoluo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id p15si144860vsn.0.2020.07.01.10.53.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2020 10:53:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3js38xgykers81fclf7ff7c5.3fd3c1e7-2l9ck-c9elo7ff7c57iflgj.3fd@flex--haoluo.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id h24so1707013qtk.18
        for <clang-built-linux@googlegroups.com>; Wed, 01 Jul 2020 10:53:18 -0700 (PDT)
X-Received: by 2002:a0c:8b4a:: with SMTP id d10mr26091444qvc.31.1593625998237;
 Wed, 01 Jul 2020 10:53:18 -0700 (PDT)
Date: Wed,  1 Jul 2020 10:53:15 -0700
Message-Id: <20200701175315.1161242-1-haoluo@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH bpf-next v2] selftests/bpf: Switch test_vmlinux to use hrtimer_range_start_ns.
From: "'Hao Luo' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: netdev@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: sdf@google.com, Shuah Khan <shuah@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Andrii Nakryiko <andriin@fb.com>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	Hao Luo <haoluo@google.com>, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: haoluo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ufhtwlfr;       spf=pass
 (google.com: domain of 3js38xgykers81fclf7ff7c5.3fd3c1e7-2l9ck-c9elo7ff7c57iflgj.3fd@flex--haoluo.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3js38XgYKERs81FCLF7FF7C5.3FD3C1E7-2L9CK-C9ELO7FF7C57IFLGJ.3FD@flex--haoluo.bounces.google.com;
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
programs. But in a kernel built by clang, which performs more aggresive
inlining, that function gets inlined into its caller SyS_nanosleep.
Therefore, even though fentry and kprobe do hook on the function,
they aren't triggered by the call to nanosleep in the test.

A possible fix is switching to use a function that is less likely to
be inlined, such as hrtimer_range_start_ns. The EXPORT_SYMBOL functions
shouldn't be inlined based on the description of [1], therefore safe
to use for this test. Also the arguments of this function include the
duration of sleep, therefore suitable for test verification.

[1] af3b56289be1 time: don't inline EXPORT_SYMBOL functions

Tested:
 In a clang build kernel, before this change, the test fails:

 test_vmlinux:PASS:skel_open 0 nsec
 test_vmlinux:PASS:skel_attach 0 nsec
 test_vmlinux:PASS:tp 0 nsec
 test_vmlinux:PASS:raw_tp 0 nsec
 test_vmlinux:PASS:tp_btf 0 nsec
 test_vmlinux:FAIL:kprobe not called
 test_vmlinux:FAIL:fentry not called

 After switching to hrtimer_range_start_ns, the test passes:

 test_vmlinux:PASS:skel_open 0 nsec
 test_vmlinux:PASS:skel_attach 0 nsec
 test_vmlinux:PASS:tp 0 nsec
 test_vmlinux:PASS:raw_tp 0 nsec
 test_vmlinux:PASS:tp_btf 0 nsec
 test_vmlinux:PASS:kprobe 0 nsec
 test_vmlinux:PASS:fentry 0 nsec

Signed-off-by: Hao Luo <haoluo@google.com>
Acked-by: Andrii Nakryiko <andriin@fb.com>
---
 Changelog since v1:
 - More accurate commit messages

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200701175315.1161242-1-haoluo%40google.com.
