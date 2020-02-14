Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6UETPZAKGQEEEVUHLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E2D15DC45
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 16:53:32 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id p4sf6982679ioo.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:53:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581695611; cv=pass;
        d=google.com; s=arc-20160816;
        b=GkbbjxBMyWx7ITHZ/Gtpd+Il/EXokMDKBxQEnGdjXXfJR19sf8jBowAZ27ZRlVj1qC
         wnfKjSL+N4ubCbUA8Z01f8U5GPtwMiG8nXwpv2sj3HZ/UKBaSbcKEDMmka15icjOaUO3
         ndzWRKg0vJIlkSsnEZV6gCjjXR5UbCE6bhzJ7m4lu8VJkkNNWNYeaASk88nYCZB1/2Pl
         Dm8GKfKdEl/PzSYvLdfovJVllBG6SYd0dzvsTrPVH1pLVXnLDcLL2s/YhdPV7YWKXwMZ
         sP2u/PAWGFsYqvoSNdZhBbuPulM/vc6iD1j47B1Ua/uoRcZhDYMWzvDYrQkewFc1I6C2
         9LcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=SWwjRe9XBS3AtxP4q6pi45+poczxoNZxLnEAvOo8o2k=;
        b=MmMOqgvXDAOSz6EQLlZgEfHaMhjGaj5s+KJtqqGVS2VeDGgaVgW+srqvPR72OHT2jU
         7nEdotj7FNZ+iyfzpESo32BkNDy6zRA/Sr5CXK1Go7ifLLNK3rzJ7WTCm/+t//jcy4fa
         H9C/uPD+SrZMjPEUQG/XSN9t1wZ+070J1EwTlGQlEguyZUxnhMTBZSEyjzMPtDNgHd0d
         J9xz598JwKHHGsaYUdpaXyQFNq0I+OvkJXjy60W6u5mXyb1pP7/N3Wbd73wEyYl8C+we
         xKbvS0G9dprovdQ2Q7C0B4K6NN34oPBgLbwO/Q9UDBmy6rYU+CivfjsiVZ2i47qkTH7X
         BoVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nonzCETK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SWwjRe9XBS3AtxP4q6pi45+poczxoNZxLnEAvOo8o2k=;
        b=Zf7H/9B24HKl1Vq6xaZqtY78lKu8qAophxfnNSiKUslIIeGNdPwm5JGa87uR8z0CKP
         xWtj5Bcbr657KHM5Wlyzc6w+VnJxC0xdkxkchcgZyopxjp0tp+9ZtcKHIgoyFIzJczCD
         BMiz9Pg95rnvYbKkJp2nJeKzX0BhiMmqxUeWCrqTXiqD9zViqAKxEaR35qvb2lZE3Zor
         WRTfAChcHPCaZhXzA4wEZ8WXDZaiTtwXBTAbfl3TBqWQw9LRYOjudm9vKrsinIamBOXk
         3m0oh1xYdMJUg3A5svbtZs1fzMGYdtdMQ36J+vkFElnfKGtCJ+j7gGwoqHMDyVpjiuac
         4UOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SWwjRe9XBS3AtxP4q6pi45+poczxoNZxLnEAvOo8o2k=;
        b=m569GA3yZOV2i4sMI1rm8I+H53o2t/Nwcgq2ENOQoVsxDIeqpIqJbhH0qfpCqF8BeP
         7biNQBvZG0xK6V7U8JSenIXRA+P0tNRYVWCKolokIMLSok3AIYWqucFiMS42YLO94nuh
         L9z/dBhoNMpXSap+Ho7Ci6PjlwShiPcnL0iwJRRWJ5J2VUv0ysxesqqRZiBsTV5L3TAP
         SKqNoBxLYaG8i6iN692RfcCMQ/wnQeajnCtmmPsuieddz076xL3DfCmJNfVzB9a6foGC
         8YyPBk6LDTAXW9eI0vGPaU8CTxYzFxe7OLtORa4IvIFp7BbVBfYZ/5tQ0lpMenxei0dz
         x9Jg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXcb0dcInP7Ux/y9kC/mgh9MZzqqNB5Kwsi+9LtojLlvTfPU8QV
	1WNtvx8tvLQHTm6aK5uDxuI=
X-Google-Smtp-Source: APXvYqxY+zngrok7sqQrbGmjQs+Si/p21m+JW/WUefFqiB6EBSN0lG+Of5RO4JShf2fNHK1aV8N/5g==
X-Received: by 2002:a92:afcf:: with SMTP id v76mr3519026ill.20.1581695611054;
        Fri, 14 Feb 2020 07:53:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:5110:: with SMTP id f16ls560935iob.2.gmail; Fri, 14 Feb
 2020 07:53:30 -0800 (PST)
X-Received: by 2002:a05:6602:2431:: with SMTP id g17mr2882732iob.106.1581695610657;
        Fri, 14 Feb 2020 07:53:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581695610; cv=none;
        d=google.com; s=arc-20160816;
        b=mnyGGJPdwLPz3t4Y0WJ7fB07byVBVKUL/f1AQ1N1J31j7ns9ZI2dd5HtIsioP2s/kt
         1B++JrGt6LMmaijKlv2Vh8sCtrJ4wf3+MgotednF6swDJIWQgkD+bkH3dD4Ul3aCzNtl
         5HL+00E/VCOKIxjJ2BhyDv/zTnqyopXLI1uQxY1rf6PSW7Ij5G1ruS7641iSh9F1F/VE
         f653jn/vvlqDc/Vmyl5ujPWfu8TtZzA/hstUAGC2PAMSlfAtM53hFcCydIz0WMuSwHTx
         mxlRSLoQvP8YIzJMtUgu/bpZENTRP+ZVWbIKFyp0Va6Ri0aMem8wFXhUIAzLQ6ynKb7N
         qQ5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rOiAxZ2Rjx0n7yDlxCyxK1l32NUqw9RK+2sJCoXruHM=;
        b=fFGweYE2jT3/AuIN3q5u98KNcqcRJBEwoBYZrKrtJGKB9C+a8LWQrggDL3XCOoG116
         /bJjzkKELJWhX2Kh6tiS9yCASKQzhAEgOQrPf0/JpGpGsNDwPr3KRUwRK/Ypd7oBJl8r
         T0c+lHMV3WEu19A/Oy+B5D3vUlKF2BaZ8M0nMSvYJliey7l5KjFnAdzVX+lghK1rsAde
         MiTH3B2kdhKjY3LmbS2/HMyGB5yrz/rmXPCghYZvpgSa/KPE6etPPZltNQzZeljLtVDG
         lOGn0kartXhUSSrZK9aCBZSE7UGApJQ+ZEH3ZL42BfMQo4FLQNVhpSvpmg+XSrpjPzO/
         qTlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nonzCETK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k9si401765ili.4.2020.02.14.07.53.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 07:53:30 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1852F24676;
	Fri, 14 Feb 2020 15:53:29 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.5 212/542] samples/bpf: Set -fno-stack-protector when building BPF programs
Date: Fri, 14 Feb 2020 10:43:24 -0500
Message-Id: <20200214154854.6746-212-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=nonzCETK;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

[ Upstream commit 450278977acbf494a20367c22fbb38729772d1fc ]

It seems Clang can in some cases turn on stack protection by default, which
doesn't work with BPF. This was reported once before[0], but it seems the
flag to explicitly turn off the stack protector wasn't added to the
Makefile, so do that now.

The symptom of this is compile errors like the following:

error: <unknown>:0:0: in function bpf_prog1 i32 (%struct.__sk_buff*): A cal=
l to built-in function '__stack_chk_fail' is not supported.

[0] https://www.spinics.net/lists/netdev/msg556400.html

Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
Link: https://lore.kernel.org/bpf/20191216103819.359535-1-toke@redhat.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 samples/bpf/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index c0147a8cf1882..06ebe3104cc03 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -236,6 +236,7 @@ BTF_LLVM_PROBE :=3D $(shell echo "int main() { return 0=
; }" | \
 			  readelf -S ./llvm_btf_verify.o | grep BTF; \
 			  /bin/rm -f ./llvm_btf_verify.o)
=20
+BPF_EXTRA_CFLAGS +=3D -fno-stack-protector
 ifneq ($(BTF_LLVM_PROBE),)
 	BPF_EXTRA_CFLAGS +=3D -g
 else
--=20
2.20.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200214154854.6746-212-sashal%40kernel.org.
