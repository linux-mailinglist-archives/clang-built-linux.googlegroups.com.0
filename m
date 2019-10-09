Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBFEM7HWAKGQECZQ2M6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E5CD19CA
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 22:41:57 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id c17sf1623274wro.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 13:41:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570653716; cv=pass;
        d=google.com; s=arc-20160816;
        b=X6pr2pjBdnSnEKO52i4u6FSPZQqIY4HgaAAVm8O78eT+qj5rdbz3ToZtVNMlWGR9u6
         uaNDBVDp9hmOZJEcYZoUIik8lbs17zy4G/uc1ZaY02gadvQrEWuSaPQ2KR4lE/3zMhmn
         omKtvyOrNQuJoiHG5aqBtofykrBvi0q3cYB3L4cz69GIqf1DAboD5Ph2JR8/IX/DsS8i
         BThNMR7HsglW2GxQmoYck+CpbwjHQsDLJ7ERKFav7GbNCz2a21m/cY8z0FxZMIFd9dME
         3XBGpSsbsabBwtO/j0d+VC6b4/X55BT2qQ5fdYXsJ/QCLUEJ5jWcNsOGbdHUQSg/fS3p
         FVPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=3QzOuObKh8TgtOVlHHgWGAHsLgFPwe8rDN7qJ50wjy4=;
        b=Tm7iXEwlYBGntkDyzqH2eaTi29S6XNljxMU/Leq+FeFGonC/177AZrb1g4gl/wmeDB
         Bmhq9+Uom46NMQUvSnc+KVAoVlNHG6ktzHVF6aYN1K1tvoJVWe2TTesbm6BXs+Gnh8Uy
         ZVwgrmq/ddY+6S/d2mEJYbrIq9MNVPZcbkOKuazra3u0/nMFkWtttXtAwxZWo3awnZ1d
         qMvAvr2t/6Vr1KyctF2cckiTqZ5XdoRdQgIyIQuClvA3HguQdoMpfepw04Y+kJSrYdlT
         mWHP6ut2MkFU/WZRVtLnwPEq1M9AxvX1AROridNebiWQQz9SkDBOtbInMNromhq5Uqrb
         EfMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kPel8NhR;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3QzOuObKh8TgtOVlHHgWGAHsLgFPwe8rDN7qJ50wjy4=;
        b=EGQtCyhbFYnYvKXH8Lkskb4NkUgKdnpXztd9rUtlVN27DeJCNGXLVIhm/ZSwsn0JMW
         5tqbO8HFQq0+CSBGJnj7Cc/0flURc8Ci+KHpyp1GEgzIidhaQy6W9dfzj7kISa1vBaNO
         HO/WTlwfC1fB6a1l/VKV3Oda70pm1rUk59hYCfXeseJh4C1C2XlCftmEbCFO+XDpzKaV
         1KuKKYaHdPI+ikOifsdMQ3r9InTghEG8wwhxeK7/Utuq6sNTc03DDkJt0vkQCMOku4tn
         XmulbzX7PffnJqnOkfEVK5lbrIu7/U1MsmwfbY+89OJZirLunjnFoszpN03cOawWFO0b
         QggQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3QzOuObKh8TgtOVlHHgWGAHsLgFPwe8rDN7qJ50wjy4=;
        b=lpo45xscfWNON/9tAI59g/JuLOY5dFZlKKRYosmQp5qvIEdnhwculZs9pP1CEwV3bg
         2LJwp7J4wSXdGS9olyMfUsNYM4A8n0NWZBN8u8gnVk+DFBdckIgf5/CLWM9mZRSMiwLy
         t7qXRL429JMM1U1Tz7IFL0C4pHIoKOaf+hlm19Z36jHPO1LkwiQ54YvG/MiBpfQ4/s9v
         1n4LpLXj7ZshQFwA+3oCGbz+ugOx0ajqxqZIDwsALQgTxUUN++rNcOGJ7P5YSOdGxkb2
         awXbERNGwUQoll6TjhmfhH/We7+Mph7hDPLlQi2FkHzdRNZ9xhnjPCgZcEnnSnbWyInu
         EbmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWIpvn7paNyuyjheLY/o1lab9SjGJ6Mf/U3SQJGPh3KOXlP68GP
	N1/6+stCjxPaejr8SMbwhNo=
X-Google-Smtp-Source: APXvYqyHuJpmwD8jRm60LEGFNGMZ+bzBtrAnyIybQaMVJ6licqPuIviL6FQWGOklhQBluKMuJYV+uw==
X-Received: by 2002:adf:f547:: with SMTP id j7mr4835832wrp.26.1570653716821;
        Wed, 09 Oct 2019 13:41:56 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dccc:: with SMTP id x12ls586439wrm.3.gmail; Wed, 09 Oct
 2019 13:41:56 -0700 (PDT)
X-Received: by 2002:a5d:428c:: with SMTP id k12mr4619870wrq.184.1570653716523;
        Wed, 09 Oct 2019 13:41:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570653716; cv=none;
        d=google.com; s=arc-20160816;
        b=jmEBz/WeJhwfBjO3euCRWexXW3giE31dRNzu42mN4fPB7q1K9ENu22P6cPVnk53iR8
         lmgwo8QRwu6Rov2hF28CAuENcrjw7TwicmcS+mVxfZo/FaPj9GDH7wAtrB/0MaYz1/Gm
         wBF41YowG6pykOhE3kYkZv9sFXa+MU96sWIlBjWxaEjFl8ArklepgDgQWa297gJTC9O9
         KhRCIigNwKSxuNVlNCO2US4NLrT1XhP7PwdJwhA/dssdHqh6J6lEOH7KpWtfXF4CZ37U
         ajM87CJqugNByUdAGcxMYqx7LF/KXPlcJh9biiaXD9MLFvrnZGFZCyeofLF4+D+Af3B+
         TERw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=dPicZ6dKiXggVDaTmZsHbexmmGF0NBX0XkLCl2NE9e8=;
        b=eXZll+zuA8qbx5vqeqoV/xslAD+N/TxpdHXElL223bK6syfUf0iLmnCOMY6n+Gjpac
         VsfirB22Ov007Yp8w1L+yKLVi0D/Wn1HPVAOweIErvB+CvU2E0+DGB3EQAB7IPlyATRn
         zBNuzW0g4AItZB3yC0k5e0QPj12LvFHoN+iTFuy3dcxixt22ROl6P1CsOP9pBR7EAVxj
         8OCpqLC8hgzOnKCZCWidJAPl69+Y+MtwCEwCUL9qvolSCf1igfEEIhk/LhLq5R9n6HY1
         hfiL6v14OZGALhoiYwl32RbIYhyl5n2Zu/RwIvK7Tk2F50uUd03Tnx4xCZXa3j4sPpS6
         +zqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kPel8NhR;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id o10si257675wrm.5.2019.10.09.13.41.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:41:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id a22so3917051ljd.0
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 13:41:56 -0700 (PDT)
X-Received: by 2002:a2e:2943:: with SMTP id u64mr3622095lje.241.1570653716268;
        Wed, 09 Oct 2019 13:41:56 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id h3sm730871ljf.12.2019.10.09.13.41.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 13:41:55 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	ilias.apalodimas@linaro.org,
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v4 bpf-next 12/15] libbpf: add C/LDFLAGS to libbpf.so and test_libpf targets
Date: Wed,  9 Oct 2019 23:41:31 +0300
Message-Id: <20191009204134.26960-13-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=kPel8NhR;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

In case of C/LDFLAGS there is no way to pass them correctly to build
command, for instance when --sysroot is used or external libraries
are used, like -lelf, wich can be absent in toolchain. This can be
used for samples/bpf cross-compiling allowing to get elf lib from
sysroot.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 tools/lib/bpf/Makefile | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/tools/lib/bpf/Makefile b/tools/lib/bpf/Makefile
index 46280b5ad48d..75b538577c17 100644
--- a/tools/lib/bpf/Makefile
+++ b/tools/lib/bpf/Makefile
@@ -174,8 +174,9 @@ bpf_helper_defs.h: $(srctree)/include/uapi/linux/bpf.h
 $(OUTPUT)libbpf.so: $(OUTPUT)libbpf.so.$(LIBBPF_VERSION)
 
 $(OUTPUT)libbpf.so.$(LIBBPF_VERSION): $(BPF_IN)
-	$(QUIET_LINK)$(CC) --shared -Wl,-soname,libbpf.so.$(LIBBPF_MAJOR_VERSION) \
-				    -Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
+	$(QUIET_LINK)$(CC) $(LDFLAGS) \
+		--shared -Wl,-soname,libbpf.so.$(LIBBPF_MAJOR_VERSION) \
+		-Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
 	@ln -sf $(@F) $(OUTPUT)libbpf.so
 	@ln -sf $(@F) $(OUTPUT)libbpf.so.$(LIBBPF_MAJOR_VERSION)
 
@@ -183,7 +184,7 @@ $(OUTPUT)libbpf.a: $(BPF_IN)
 	$(QUIET_LINK)$(RM) $@; $(AR) rcs $@ $^
 
 $(OUTPUT)test_libbpf: test_libbpf.c $(OUTPUT)libbpf.a
-	$(QUIET_LINK)$(CC) $(INCLUDES) $^ -lelf -o $@
+	$(QUIET_LINK)$(CC) $(CFLAGS) $(LDFLAGS) $(INCLUDES) $^ -lelf -o $@
 
 $(OUTPUT)libbpf.pc:
 	$(QUIET_GEN)sed -e "s|@PREFIX@|$(prefix)|" \
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191009204134.26960-13-ivan.khoronzhuk%40linaro.org.
