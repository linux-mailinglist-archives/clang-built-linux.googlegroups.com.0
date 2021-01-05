Return-Path: <clang-built-linux+bncBCCZHPMXYQEBBEPX2H7QKGQEB4IFRXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C342EAD8E
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 15:45:37 +0100 (CET)
Received: by mail-ej1-x63e.google.com with SMTP id u15sf8064582ejg.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 06:45:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609857937; cv=pass;
        d=google.com; s=arc-20160816;
        b=y6hjOi1IwVdnH5maJaB2LNk2HNMAaL/j7n9Gnw4VnYQb4KwAC4buv6uWWnTIjXQsrH
         tvts/SxpdnueaZafrW5Jhxj8XmnS82KdV4T1BqEhffDF0rhjAVke4ire+m4zjvzp5nrH
         RShxbQncpTI/72CQ6827WwAaYShcq+SBuzH/RB+CEnUZmp9VoY9V0efL5u84tYHs4vS7
         PaNnoJJBjkB+LoZyR4HS/SJ170GuCXIYqmYRJGMGrmuw6u1j4mJ3O3nunIimFmRGnf60
         c1yBpETLZTKvkevFTQt42pZP/VGePvdaJZieDmnLsxyPfHWaCcSGdwLdR+6uFJ7asmka
         0DtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:sender:dkim-signature;
        bh=im2DDR59gg8Df/kX90G5bzEVV+Dr35yGOE29N3/Q3KI=;
        b=IkewBhb59UEvnst6RF9Gon/r9RDy+K9X7+jfwabizbOHN+XhHsVd7s/k6mymIWGf92
         NfMuErUBXiqD4whz6RK/YoAZzYB2R8Nqx6LnEFmqvj3cR9sk3oKFOEVjIktvjhXqki87
         1YStEohqfosTCpRKvvSZRRZ3OekmiCvF+ZMOVYozvoh7w1E48u+QZQujhiW23XpLewYu
         UI7/0s0rPoRy9p6iZPBZE8dbkMhia3soDbWEGaIo/g7MaQuN6g3753TAav0ydnE/S+x8
         f4VzzoZSe5e31tz2Fhn9AnO/6WosjJQyJOAOdzjTNvnHqGSTGounafDWPh7oXtC/9IKT
         57JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b=ErXM3l7Z;
       spf=pass (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as permitted sender) smtp.mailfrom=sean@mess.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=im2DDR59gg8Df/kX90G5bzEVV+Dr35yGOE29N3/Q3KI=;
        b=pBtjG8LryB3Z2Zwy1GiBZYvd35t59wjV2blZvdA31Ee0wEtb/+GBbMK4hIbmWqZLDG
         Gyi07PUApNOiUyROPxgaesv4FXcm7HGRYJK2pjcyXd4IWYi7pbYMOFINDHvZqzhlQNkB
         JtDzyjNEt8OhJFkbJU72x/Tp/93RjXbHO7CTpJUzsLXi4sM4s/URboV16kvBCLj6R/SO
         olkQSkKHzmxlJpdZ9NsAlxJhbuWXQ7bstcUPYRZQt3hzi+Nv0YlMWhjJMscSQvuP536f
         eY6BhcKcE+XNclXuVhJB3RXC2uTQmyDcoWeZZPSGf7XKkaua6sPyIDqvkNc63/7JDPiB
         dKVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=im2DDR59gg8Df/kX90G5bzEVV+Dr35yGOE29N3/Q3KI=;
        b=nxLO6HmbNeEYdXzyARP3LY3ckKL8oPhvL5GB0lLqLAoLhLn5gzfPZylB60YpIMmw/c
         TbFZU7SIBINjiX9nzCKEfldwg97Geu+g7rPoVtTbSdL3J4HwNSBCJdebx1j1vsGQ6GyM
         ymoLxvmpXgaf9hqVJMG1j8G8XpuIXZEwBqqeLz49SxXg5XR+ie5pYbWlXhdFsX2GEl/W
         ErOi0qDF523fUz9kZHkuZzECOm2LaW3Cn5vH+a7luc9SvXuf5qsSZxtN3zPYBgwVHD2d
         MWxiOrSkHcowpJ8ZZSys6e+HjYzJsD7+v77A3Xavp3FKvcFbWLB/GoWNJ1+wJXRCQF3f
         /ksA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Tz3CZIvZLKV8udA/Kl2poAxcg714RgCeqIzuh2VDb94r9dKpJ
	IYsMkPEKzuEsIZ9lKd5coO4=
X-Google-Smtp-Source: ABdhPJyvI5wnMZgpaay3N0vl5dprl1xhzu34GITzAeEsbBmLxEHI2DnsSy5KUxRDuuKIUoupRqhKwQ==
X-Received: by 2002:a17:906:4d59:: with SMTP id b25mr61358252ejv.8.1609857937419;
        Tue, 05 Jan 2021 06:45:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1432:: with SMTP id c18ls1741987edx.0.gmail; Tue,
 05 Jan 2021 06:45:36 -0800 (PST)
X-Received: by 2002:a50:f304:: with SMTP id p4mr86293edm.118.1609857936626;
        Tue, 05 Jan 2021 06:45:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609857936; cv=none;
        d=google.com; s=arc-20160816;
        b=I18Z0rTTQQFOKLoeeWZalz2QbWfii/hPBSZ0DF714+2K7WiDZuAIBpRJF4F55mmzDV
         tW8nY4e7hvJrCW2seiC/bvhYncQ/phNvoIS4bjmqmz88ePPMi/2iSZr8EZXB2vbmrw4T
         lWoU3cwk/u9qvqiJ6lrO7lRxCz0DR4tr+ttht/cCBo/x2VvtdkkFUdhA7uHUwr53uQAe
         hjAHd4coTGNPSiLBGR0kAwDPw82l+/dejTj+J55np2ddT+LLV5BvpR+yj2WjrashDKiE
         yPb5dBkvT/lojpoRlGWF7KscAvS2IKRCd8fi5reCQcc24HYuzaMoHD2kwr4bLiaSilgS
         vwUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:dkim-signature;
        bh=KkF144HMg/oDe/YOIPMhph5AgHI1u/CX0bfRmjtLCPY=;
        b=inKvo6Wa5VhIveK5JkzlaTqYRq3Rfg91wr0S4v66zPZmubgj90Ej7WIrU863JcfGI/
         dmWaoldPr+e6JSYUKibqkiFk8SbMh5m8hZ+sHU8izsA3g17T2pN5PE26oG0ogG/7KtXh
         C0CxDNt5blCzsMRhG8MJxw2uJC2xyN8ExCn7PidwY1PhrQ0gePRtt0RO0tkjRrZtwTpy
         DpQAA1JOG5/YP183shb/y9hMs1gnDXtfrErpN53K2rq7DphlWPC3TzbhxZJAfVV3ozuF
         25b14Pa0Mrnyj1kc4hwUWM5oeybiyeL3WOGNNMM4YkoqmFW0cZ8h6NWJdpuczVoigiWF
         adAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b=ErXM3l7Z;
       spf=pass (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as permitted sender) smtp.mailfrom=sean@mess.org
Received: from gofer.mess.org (gofer.mess.org. [2a02:8011:d000:212::1])
        by gmr-mx.google.com with ESMTPS id d9si2863edr.1.2021.01.05.06.45.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jan 2021 06:45:36 -0800 (PST)
Received-SPF: pass (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as permitted sender) client-ip=2a02:8011:d000:212::1;
Received: by gofer.mess.org (Postfix, from userid 1000)
	id A116CC6380; Tue,  5 Jan 2021 14:45:34 +0000 (GMT)
From: Sean Young <sean@mess.org>
To: Yonghong Song <yhs@fb.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Quentin Monnet <quentin@isovalent.com>,
	=?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
	linux-doc@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v3 1/4] btf: add support for ints larger than 128 bits
Date: Tue,  5 Jan 2021 14:45:31 +0000
Message-Id: <13cfab3593e0ea960ca732c259bfa60bf3c16b3b.1609855479.git.sean@mess.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1609855479.git.sean@mess.org>
References: <cover.1609855479.git.sean@mess.org>
MIME-Version: 1.0
X-Original-Sender: sean@mess.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mess.org header.s=2020 header.b=ErXM3l7Z;       spf=pass
 (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as
 permitted sender) smtp.mailfrom=sean@mess.org
Content-Type: text/plain; charset="UTF-8"
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

clang supports arbitrary length ints using the _ExtInt extension. This
can be useful to hold very large values, e.g. 256 bit or 512 bit types.

Larger types (e.g. 1024 bits) are possible but I am unaware of a use
case for these.

This requires the _ExtInt extension enabled in clang, which is under
review.

Link: https://clang.llvm.org/docs/LanguageExtensions.html#extended-integer-types
Link: https://reviews.llvm.org/D93103

Signed-off-by: Sean Young <sean@mess.org>
---
 Documentation/bpf/btf.rst      |  4 +--
 include/uapi/linux/btf.h       |  2 +-
 kernel/bpf/btf.c               | 54 ++++++++++++++++++++++++++++------
 tools/include/uapi/linux/btf.h |  2 +-
 4 files changed, 49 insertions(+), 13 deletions(-)

diff --git a/Documentation/bpf/btf.rst b/Documentation/bpf/btf.rst
index 44dc789de2b4..784f1743dbc7 100644
--- a/Documentation/bpf/btf.rst
+++ b/Documentation/bpf/btf.rst
@@ -132,7 +132,7 @@ The following sections detail encoding of each kind.
 
   #define BTF_INT_ENCODING(VAL)   (((VAL) & 0x0f000000) >> 24)
   #define BTF_INT_OFFSET(VAL)     (((VAL) & 0x00ff0000) >> 16)
-  #define BTF_INT_BITS(VAL)       ((VAL)  & 0x000000ff)
+  #define BTF_INT_BITS(VAL)       ((VAL)  & 0x000003ff)
 
 The ``BTF_INT_ENCODING`` has the following attributes::
 
@@ -147,7 +147,7 @@ pretty print. At most one encoding can be specified for the int type.
 The ``BTF_INT_BITS()`` specifies the number of actual bits held by this int
 type. For example, a 4-bit bitfield encodes ``BTF_INT_BITS()`` equals to 4.
 The ``btf_type.size * 8`` must be equal to or greater than ``BTF_INT_BITS()``
-for the type. The maximum value of ``BTF_INT_BITS()`` is 128.
+for the type. The maximum value of ``BTF_INT_BITS()`` is 512.
 
 The ``BTF_INT_OFFSET()`` specifies the starting bit offset to calculate values
 for this int. For example, a bitfield struct member has:
diff --git a/include/uapi/linux/btf.h b/include/uapi/linux/btf.h
index 5a667107ad2c..1696fd02b302 100644
--- a/include/uapi/linux/btf.h
+++ b/include/uapi/linux/btf.h
@@ -84,7 +84,7 @@ struct btf_type {
  */
 #define BTF_INT_ENCODING(VAL)	(((VAL) & 0x0f000000) >> 24)
 #define BTF_INT_OFFSET(VAL)	(((VAL) & 0x00ff0000) >> 16)
-#define BTF_INT_BITS(VAL)	((VAL)  & 0x000000ff)
+#define BTF_INT_BITS(VAL)	((VAL)  & 0x000003ff)
 
 /* Attributes stored in the BTF_INT_ENCODING */
 #define BTF_INT_SIGNED	(1 << 0)
diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
index 8d6bdb4f4d61..44bc17207e9b 100644
--- a/kernel/bpf/btf.c
+++ b/kernel/bpf/btf.c
@@ -166,7 +166,8 @@
  *
  */
 
-#define BITS_PER_U128 (sizeof(u64) * BITS_PER_BYTE * 2)
+#define BITS_PER_U128 128
+#define BITS_PER_U512 512
 #define BITS_PER_BYTE_MASK (BITS_PER_BYTE - 1)
 #define BITS_PER_BYTE_MASKED(bits) ((bits) & BITS_PER_BYTE_MASK)
 #define BITS_ROUNDDOWN_BYTES(bits) ((bits) >> 3)
@@ -1907,9 +1908,9 @@ static int btf_int_check_member(struct btf_verifier_env *env,
 	nr_copy_bits = BTF_INT_BITS(int_data) +
 		BITS_PER_BYTE_MASKED(struct_bits_off);
 
-	if (nr_copy_bits > BITS_PER_U128) {
+	if (nr_copy_bits > BITS_PER_U512) {
 		btf_verifier_log_member(env, struct_type, member,
-					"nr_copy_bits exceeds 128");
+					"nr_copy_bits exceeds 512");
 		return -EINVAL;
 	}
 
@@ -1963,9 +1964,9 @@ static int btf_int_check_kflag_member(struct btf_verifier_env *env,
 
 	bytes_offset = BITS_ROUNDDOWN_BYTES(struct_bits_off);
 	nr_copy_bits = nr_bits + BITS_PER_BYTE_MASKED(struct_bits_off);
-	if (nr_copy_bits > BITS_PER_U128) {
+	if (nr_copy_bits > BITS_PER_U512) {
 		btf_verifier_log_member(env, struct_type, member,
-					"nr_copy_bits exceeds 128");
+					"nr_copy_bits exceeds 512");
 		return -EINVAL;
 	}
 
@@ -2012,9 +2013,9 @@ static s32 btf_int_check_meta(struct btf_verifier_env *env,
 
 	nr_bits = BTF_INT_BITS(int_data) + BTF_INT_OFFSET(int_data);
 
-	if (nr_bits > BITS_PER_U128) {
-		btf_verifier_log_type(env, t, "nr_bits exceeds %zu",
-				      BITS_PER_U128);
+	if (nr_bits > BITS_PER_U512) {
+		btf_verifier_log_type(env, t, "nr_bits exceeds %u",
+				      BITS_PER_U512);
 		return -EINVAL;
 	}
 
@@ -2080,6 +2081,37 @@ static void btf_int128_print(struct btf_show *show, void *data)
 				     lower_num);
 }
 
+static void btf_bigint_print(struct btf_show *show, void *data, u16 nr_bits)
+{
+	/* data points to 256 or 512 bit int type */
+	char buf[129];
+	int last_u64 = nr_bits / 64 - 1;
+	bool seen_nonzero = false;
+	int i;
+
+	for (i = 0; i <= last_u64; i++) {
+#ifdef __BIG_ENDIAN_BITFIELD
+		u64 v = ((u64 *)data)[i];
+#else
+		u64 v = ((u64 *)data)[last_u64 - i];
+#endif
+		if (!seen_nonzero) {
+			if (!v && i != last_u64)
+				continue;
+
+			snprintf(buf, sizeof(buf), "%llx", v);
+
+			seen_nonzero = true;
+		} else {
+			size_t off = strlen(buf);
+
+			snprintf(buf + off, sizeof(buf) - off, "%016llx", v);
+		}
+	}
+
+	btf_show_type_value(show, "0x%s", buf);
+}
+
 static void btf_int128_shift(u64 *print_num, u16 left_shift_bits,
 			     u16 right_shift_bits)
 {
@@ -2172,7 +2204,7 @@ static void btf_int_show(const struct btf *btf, const struct btf_type *t,
 	u32 int_data = btf_type_int(t);
 	u8 encoding = BTF_INT_ENCODING(int_data);
 	bool sign = encoding & BTF_INT_SIGNED;
-	u8 nr_bits = BTF_INT_BITS(int_data);
+	u16 nr_bits = BTF_INT_BITS(int_data);
 	void *safe_data;
 
 	safe_data = btf_show_start_type(show, t, type_id, data);
@@ -2186,6 +2218,10 @@ static void btf_int_show(const struct btf *btf, const struct btf_type *t,
 	}
 
 	switch (nr_bits) {
+	case 512:
+	case 256:
+		btf_bigint_print(show, safe_data, nr_bits);
+		break;
 	case 128:
 		btf_int128_print(show, safe_data);
 		break;
diff --git a/tools/include/uapi/linux/btf.h b/tools/include/uapi/linux/btf.h
index 5a667107ad2c..1696fd02b302 100644
--- a/tools/include/uapi/linux/btf.h
+++ b/tools/include/uapi/linux/btf.h
@@ -84,7 +84,7 @@ struct btf_type {
  */
 #define BTF_INT_ENCODING(VAL)	(((VAL) & 0x0f000000) >> 24)
 #define BTF_INT_OFFSET(VAL)	(((VAL) & 0x00ff0000) >> 16)
-#define BTF_INT_BITS(VAL)	((VAL)  & 0x000000ff)
+#define BTF_INT_BITS(VAL)	((VAL)  & 0x000003ff)
 
 /* Attributes stored in the BTF_INT_ENCODING */
 #define BTF_INT_SIGNED	(1 << 0)
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/13cfab3593e0ea960ca732c259bfa60bf3c16b3b.1609855479.git.sean%40mess.org.
