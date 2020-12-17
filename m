Return-Path: <clang-built-linux+bncBCCZHPMXYQEBBMXF5X7AKGQEADHRHTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 115BE2DD37B
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 16:01:09 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id 140sf10625749lfm.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 07:01:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608217268; cv=pass;
        d=google.com; s=arc-20160816;
        b=IGYgn54rv712Zug5GdEkg4r6Upd+vkWOCG+R/fSrh/vnXO6t/nKaknknfTmuCxJ5pI
         391z3mQhfsmnQGDinRyhWvBU4xGw1aT6wz5D8rLEW07zCQ2ecU5q4kHQOQ9Hq+2mfpI6
         rFXxr0t/YTrYBB7pP/WivbmQx91eGrsdYLlaq15Qv6yN1HTh3AcCGoJ7R0GKsjNb4rIS
         W/6DKWESVBChQQ9umsbJ146j1VDTm8KrC/3OC6ZKNdOdP06bk6wTLKPOqeQwq3GYUdoA
         a0WdgkYwCkV9TlH2BzzfVA8hr28rAnKVkVmfkm1o5iPo29wwRbdT/DctrQpfIIrYUJsk
         V4dQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:to:from:date:sender:dkim-signature;
        bh=Dok9dUc+DYm334wMpgfYS9urG6hVmZlKcVv+LYe8VVM=;
        b=EpDbr4WTv8CcEuuWjepMqLP3UbHj7Iw/hTmtjAPSchzS17YMepmlTECSZ4k/rpHpUz
         0+QzKDq8wa7K0IsE+/ECy/aXvbT2kMQwAODnC7nVg4lAXLUqogcQRzXhslsSYquyiguU
         thLGp9BUHL7hTvNUl9kDz05DFrffojX748QW/hhV8NoFNGDyK/qwe3I07IUAEk/JwR0a
         YrMaCnKGq4eLpvTovIyDE5tZGw/egw4/LrLpuu6OOktINl7kUULCwMVu/wRPlsSQq/8a
         aFUwTKHMdbohrVlcrbOExPeGMFsaVwddzlL0HXvtE+NPdg/8fMIpv7yXARoS/Or3xpY9
         wFKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b=jYx1M5oM;
       spf=pass (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted sender) smtp.mailfrom=sean@mess.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Dok9dUc+DYm334wMpgfYS9urG6hVmZlKcVv+LYe8VVM=;
        b=UsTghKjZUJpjXkpme29KEm8t5eLzXT+/97wkccfLNHO9Ad4LwUp8BKqxyxbfYepYeo
         ECZG5aV9O7gRD6w1Qkvz39p9FrqB2pVJgu69C0VLdMcbMtcNV1p+yJ/YBiNSKGB8GaJ8
         4k31tpDNqsWzDVzNOksXKsLD8eMHT4BHGIiFPX23ufiKYwE4NS/He40dUttSVjnLWKhp
         eY2gVEk0hF7AGS3mYHp3Ny8hhkwhPQ8njhHSy36TzgZjQJJppTfC8bTK89FkghcC6Om9
         uURVyLMrQCz+Ounxz+tjFgApEt5KxW9i/IbpKfWAMItUzEGl+HvV7Kh9sHtqrd+iq87k
         s+/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dok9dUc+DYm334wMpgfYS9urG6hVmZlKcVv+LYe8VVM=;
        b=s2n3P899Bsq5vCTqTXamUaaneK4QGg+BOnDrL0ySqFqSuquyCmIAT8/7yXEPPKSkC7
         XXgu52pphzGl6h9yoVuyOc8aTZmSR7I8ia+4M8MneqOGvF1UZlAnBu+cI35jC/PB4yfK
         ece8sT9GnV69X1Ad7+S3m/LEpuyaJR25IFHzmwuBFIO+LE9C07c5HLOn/dRQHmIYwvpn
         g5FEnrfET/TQX5FrBNRSiHcX+kbIXPNNg82JX1eUW/eYFHTu0BWezV14DrDu60td+LpZ
         5Nno3uQo8W9VbL+iRxa8ktb0HZStBMIkQaWDnLI2AvFqPlSYhhMfaOB51WZgXW7uWgSw
         czDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qygTGWQ4ZLiPuIawSOx5trRS3xBoHpZZgaEyiPeMoC1exAJJm
	9iiUpCZKXxK4GvQDr6cuWKA=
X-Google-Smtp-Source: ABdhPJwvwv3MRbSwaP13itChhKW5lyBlhvT+6WQzfA5zh7TBmJv4ejcUhidZkMYURVcgw7wpY2z7OQ==
X-Received: by 2002:a05:651c:10c:: with SMTP id a12mr16510970ljb.414.1608217267010;
        Thu, 17 Dec 2020 07:01:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3614:: with SMTP id d20ls5910397lja.6.gmail; Thu, 17 Dec
 2020 07:01:04 -0800 (PST)
X-Received: by 2002:a2e:5741:: with SMTP id r1mr16213319ljd.15.1608217264432;
        Thu, 17 Dec 2020 07:01:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608217264; cv=none;
        d=google.com; s=arc-20160816;
        b=mmjXTeAGw7cM/2ZoRSHnrujH1pR9l4iDjw5CJNoXYdN2Hfh2ThKdbkkayMy+8EVRpi
         UfV7f2S4A7d2zwbxau7VYuFAfvop5oMf1p5YuHbRLRvBtbvHSXospDd5S26iGHwpx2vX
         A5AdwfSSl8Ml2Rl0cAtG8AWq0BPtGnmEgn8TyI3tllIZc3sCCvoEzAwvf/L2Am6+gBS1
         YfkoasILNsrJYJgvGvuBAOZwGvQxhfICedamfi3xKDRpCwig9ujnuOZcJBRI1Kt3DOvH
         VV1hZQDYAO9N8LprLd/OdZNptst8CRk8cJlOBv9q6TWrJ18BcE+38XHrNRF3jt2aCpkO
         i/Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=v7gmVMuxyk0caV+bQbB8k+ePRlUwKdLSNDiYbiWt5bw=;
        b=v88+vaAYaTat7Xgozsf8ZRgGjHlWXKeSJR/0BcesY5zn0Fofwy2OAsMUXEwIKcxeAQ
         EvO7bWNWmaYP8FkdtiDTqXvXVhZL8nQl2W+DaCcbBClIJlTShXrWTXUsD3xZxc6dag8G
         LegaB4EBMiyMwlA0UJ87ZS1Txz+huoP6ny57dJ6Ravng70JGU1ZszqCtyFUpCi7i7cWs
         laWWwvdZ9jtUe5zMGSkvac+pdR1fDmlS23AnKoOUF4B5WagzEtp1kSliEqCkXIHlDOTZ
         IMrXXaVcTdUpjLQS/8ySKzFmCJ3tMsUYW8i4l3Tlh78DRPGm376GCdY5tyAwW4/eOwaf
         ERcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b=jYx1M5oM;
       spf=pass (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted sender) smtp.mailfrom=sean@mess.org
Received: from gofer.mess.org (gofer.mess.org. [88.97.38.141])
        by gmr-mx.google.com with ESMTPS id f21si248270lfe.9.2020.12.17.07.01.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Dec 2020 07:01:04 -0800 (PST)
Received-SPF: pass (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted sender) client-ip=88.97.38.141;
Received: by gofer.mess.org (Postfix, from userid 1000)
	id 968C011A001; Thu, 17 Dec 2020 15:01:02 +0000 (GMT)
Date: Thu, 17 Dec 2020 15:01:02 +0000
From: Sean Young <sean@mess.org>
To: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Quentin Monnet <quentin@isovalent.com>,
	Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>,
	linux-doc@vger.kernel.org, netdev@vger.kernel.org,
	bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] btf: support ints larger than 128 bits
Message-ID: <20201217150102.GA13532@gofer.mess.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sean@mess.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mess.org header.s=2020 header.b=jYx1M5oM;       spf=pass
 (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted
 sender) smtp.mailfrom=sean@mess.org
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

This requires the _ExtInt extension to enabled for BPF in clang, which
is under review.

Link: https://clang.llvm.org/docs/LanguageExtensions.html#extended-integer-types
Link: https://reviews.llvm.org/D93103

Signed-off-by: Sean Young <sean@mess.org>
---
 Documentation/bpf/btf.rst      |  4 ++--
 include/uapi/linux/btf.h       |  2 +-
 tools/bpf/bpftool/btf_dumper.c | 39 ++++++++++++++++++++++++++++++++++
 tools/include/uapi/linux/btf.h |  2 +-
 4 files changed, 43 insertions(+), 4 deletions(-)

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
diff --git a/tools/bpf/bpftool/btf_dumper.c b/tools/bpf/bpftool/btf_dumper.c
index 0e9310727281..45ed45ea9962 100644
--- a/tools/bpf/bpftool/btf_dumper.c
+++ b/tools/bpf/bpftool/btf_dumper.c
@@ -271,6 +271,40 @@ static void btf_int128_print(json_writer_t *jw, const void *data,
 	}
 }
 
+static void btf_bigint_print(json_writer_t *jw, const void *data, int nr_bits,
+			     bool is_plain_text)
+{
+	char buf[nr_bits / 4 + 1];
+	bool first = true;
+	int i;
+
+#ifdef __BIG_ENDIAN_BITFIELD
+	for (i = 0; i < nr_bits / 64; i++) {
+#else
+	for (i = nr_bits / 64 - 1; i >= 0; i++) {
+#endif
+		__u64 v = ((__u64 *)data)[i];
+
+		if (first) {
+			if (!v)
+				continue;
+
+			snprintf(buf, sizeof(buf), "%llx", v);
+
+			first = false;
+		} else {
+			size_t off = strlen(buf);
+
+			snprintf(buf + off, sizeof(buf) - off, "%016llx", v);
+		}
+	}
+
+	if (is_plain_text)
+		jsonw_printf(jw, "0x%s", buf);
+	else
+		jsonw_printf(jw, "\"0x%s\"", buf);
+}
+
 static void btf_int128_shift(__u64 *print_num, __u16 left_shift_bits,
 			     __u16 right_shift_bits)
 {
@@ -373,6 +407,11 @@ static int btf_dumper_int(const struct btf_type *t, __u8 bit_offset,
 		return 0;
 	}
 
+	if (nr_bits > 128) {
+		btf_bigint_print(jw, data, nr_bits, is_plain_text);
+		return 0;
+	}
+
 	if (nr_bits == 128) {
 		btf_int128_print(jw, data, is_plain_text);
 		return 0;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201217150102.GA13532%40gofer.mess.org.
