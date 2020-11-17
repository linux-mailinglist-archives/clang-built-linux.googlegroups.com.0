Return-Path: <clang-built-linux+bncBCZLJOMFV4FRBV73ZT6QKGQETMQ4NEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8652B57A6
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 04:04:56 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id f5sf13656211pfa.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 19:04:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605582295; cv=pass;
        d=google.com; s=arc-20160816;
        b=yn070AzGhA656zrgz3x5yZEseiWAHq4zrt3/2uzG9E4BDQXJ3BXa6eK6987q9F+f5k
         Kg8Jv5w5WsUibMwk+E05pJKKPfhigx+I0ekRC+j0j8MKTEkPTQNEePbB9eJW7DdzqPO0
         xAQrb8W2Aau9767Z3H/cFTNQuG2qMsfjzvzCAGNxd0MMOieSNkBjbIarb5PYaG3yJ/m+
         hLoSTH20EBhXE3s5DfcUY1nargeqG3S+77HbuznrECDJqKUqqy5mnTIDL5HhaQOxFj6j
         CdX+rZqQU5xc+O6RPgoCBkpd8dpGHRceDsl0bCr747luabtuRhUA+AkI4Y5nBZO3NttX
         2Fjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=aUF+yVh+TW5JSBAFzkuEEsFOnDDXOz3AOEzDLuE/Gos=;
        b=07VoOcxdXgDbo72lfrp2StnokbwQRu3otzULq5PW0uwiDaWG+6YEAV/54zJfEijimS
         t14Z70KYx9C2QR+NtxjkpD2bcKnsXa4j/eAQ2VNEfOU+F92X+BaMvSL8UGiCSWk2j+Ru
         qHii0BjmQ7IEo01eT3nzyeqdjCpsxUTg8agB6tSNYEbsXurRXqFzQ9YBernAMva5/w04
         yajTOyxP9p+NLo3805lGLX0gPNpn1FPdksUR0MqurBfUExp/9KM2P4p9iDb63a8auxng
         /+ugiLNKrzpZH27J4et4qFhewBcw2QGrM4ZWvYZgbzHo0AW2DVn088iPIWCApf2UxTmc
         SAMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=h6SG+P3f;
       spf=pass (google.com: domain of jhubbard@nvidia.com designates 216.228.121.65 as permitted sender) smtp.mailfrom=jhubbard@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aUF+yVh+TW5JSBAFzkuEEsFOnDDXOz3AOEzDLuE/Gos=;
        b=WSkRIA9D7KTFs7fwzsnvxZHUe9W18esUeHH8hED7nqVKVubiH/d8Fk/KR4mNPGUvPS
         mAMRCfAJVQYdTgWDjvG+XbjprTeruIh7+JOIJ0MJ3rEz4jwkqBmboSS6rA1ZsbpYY6LO
         TtJihNK1JBPap2FN/lV51nOLCwzmb3Das37fyUoAeTT3oQFCSfNgSsIN3XIaCY3WYkJI
         qC8kRreiZ3jOOg6aGap0LBRG+ATaLP1QKOznauQjIRFwMIDG8xgzQ+doSK89avfR80Si
         FaLITL+fuh7jZjVmYSxz6BETIWTe02+co83Zc/mkVaqo1L/uQEvADd+5Ufa6tW66l7Mq
         6Lsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aUF+yVh+TW5JSBAFzkuEEsFOnDDXOz3AOEzDLuE/Gos=;
        b=EiazDTfNS/VfWy56eWYWDuOmiQbIVyhDhXFlRU5rhcdftB7Wn2zHLBu1dhVeS32/VM
         bHWKu4vq/NgqUm0j7hk4jpN/9Ad4Rh5JAWQi+IgrfP4KIbvWmXUGDx60FFg7O3hFRMci
         ESkKgg+jXyCFwzHw18/N8s//umQCRq4dJlGB6OKoank8ftUp35btLbmMP0huBQUSr+qi
         J5AJKEcZ9djCsMGjwKu4C4xKKxmNL92W2SZP8p8FfRqZQj+zXDheVD/C2i+v/3VnM5Tj
         37+xg0jTbkGaaxF6foJTB+Lx7tZ+bJF6iSg+hUyTpdLq8aSkKzNDpXhbiGMcRXZd7Z/N
         hLmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Hg13adfgtacG7ApUUtuBge84rO/56sdwENCfHZPnPiwFFVMV5
	8ziEzSKxFqYdCkXptXsPekE=
X-Google-Smtp-Source: ABdhPJzHZe7/fu0x3Qrt5Hhz2H5cZL4Nlpx6yNjy6qN6cMkZsuMMxi4AsEJQYD230kRDIfGkUbRFzw==
X-Received: by 2002:a62:f94d:0:b029:15c:f1a3:cd47 with SMTP id g13-20020a62f94d0000b029015cf1a3cd47mr16433408pfm.81.1605582295497;
        Mon, 16 Nov 2020 19:04:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b187:: with SMTP id s7ls5156820plr.3.gmail; Mon, 16
 Nov 2020 19:04:55 -0800 (PST)
X-Received: by 2002:a17:90b:1115:: with SMTP id gi21mr2286055pjb.58.1605582294972;
        Mon, 16 Nov 2020 19:04:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605582294; cv=none;
        d=google.com; s=arc-20160816;
        b=FeHm3D4Hd2ay4//Y47vonOIe92oo9vX75HVmTQmglVZT5U/SlMkAEVZqOnC+T6N5Dd
         /reEj8ans2npZ3L+6bf+vOXX6b4mojg0m4ucqbHoNEzD8c2ZhA+P/gROpAFnDDyG63jT
         6jssKxP9O+MbDgAgF/uCSigCJXh9jcqq02yVvVgqIhASDx5n0wwCUQiB1HxjmOEA8hsU
         MVGhK4GoYQpwOoYy4c3ca02VKqx2GEiWr3PpnLYfq9BExzkoCm8Ize9r6LOi3wKtoOdA
         Ylz+pFqhMkHrx80J1XAINRmwnhMPQiM3YImGJsk7vylpkDcf98Hk8MKwidtqZAJGl92h
         RBHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from;
        bh=p723JtS1pJNVabNwPxJOJJ9MW40U8eP5btKJWk1846o=;
        b=T/3j9iycqoUBq8iRm8UKovkSe3y+XCO2HpkOIQ31By6Pv8ROD/swbJyz2ivzq1USKD
         g72jHr6z5IgzEaPXTRkE49Ohy72RSGrqPAgeq6u4TVPZsANrtYF2lBzhytDJ6Sruyb4G
         9/xc4UsIFMYeuQxK2EOE53C6w4f/BhOAoLW2JFg8+bR2BFSiQWjuqImGChi3ZB5yeOld
         9Mp1ZHRjNmtI+Xc9r5pURsKnPR8KB74tIAtb9kJF42xnHtnlnZQZaebpQ2dBT87Bl/q4
         BkFfq5noObznsrRzJ4+xKauaa+hsNHZKxZwvnJBqyEdvhksMq2AkeamiI+TV6Y3JS/rz
         1GWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=h6SG+P3f;
       spf=pass (google.com: domain of jhubbard@nvidia.com designates 216.228.121.65 as permitted sender) smtp.mailfrom=jhubbard@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqnvemgate26.nvidia.com (hqnvemgate26.nvidia.com. [216.228.121.65])
        by gmr-mx.google.com with ESMTPS id z12si105841pjf.3.2020.11.16.19.04.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 19:04:54 -0800 (PST)
Received-SPF: pass (google.com: domain of jhubbard@nvidia.com designates 216.228.121.65 as permitted sender) client-ip=216.228.121.65;
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate26.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
	id <B5fb33dd40000>; Mon, 16 Nov 2020 19:04:52 -0800
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 17 Nov
 2020 03:04:43 +0000
Received: from sandstorm.nvidia.com (172.20.13.39) by mail.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server id 15.0.1473.3 via Frontend
 Transport; Tue, 17 Nov 2020 03:04:42 +0000
From: John Hubbard <jhubbard@nvidia.com>
To: <jarkko.sakkinen@iki.fi>
CC: <akpm@linux-foundation.org>, <andreyknvl@google.com>, <ast@kernel.org>,
	<clang-built-linux@googlegroups.com>, <daniel@iogearbox.net>,
	<elver@google.com>, <jarkko@kernel.org>, <keescook@chromium.org>,
	<linux-kernel@vger.kernel.org>, <masahiroy@kernel.org>,
	<miguel.ojeda.sandonis@gmail.com>, <natechancellor@gmail.com>,
	<ndesaulniers@google.com>, <sedat.dilek@gmail.com>,
	<vincenzo.frascino@arm.com>, <will@kernel.org>, John Hubbard
	<jhubbard@nvidia.com>
Subject: Re: [PATCH v3 1/7] compiler-clang: add build check for clang 10.0.1
Date: Mon, 16 Nov 2020 19:04:27 -0800
Message-ID: <20201117030427.61981-1-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201104013447.GA21728@kapsi.fi>
References: <20201104013447.GA21728@kapsi.fi>
MIME-Version: 1.0
X-NVConfidentiality: public
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jhubbard@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=h6SG+P3f;       spf=pass
 (google.com: domain of jhubbard@nvidia.com designates 216.228.121.65 as
 permitted sender) smtp.mailfrom=jhubbard@nvidia.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=nvidia.com
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

Hi,

I just ran into this and it's a real pain to figure out, because even
with the very latest Fedora 33 on my test machine, which provides clang
version 11.0.0:

$ clang --version
clang version 11.0.0 (Fedora 11.0.0-2.fc33)
Target: x86_64-unknown-linux-gnu

...the bpftrace program still chokes on some, but not all commands, in
ways that invisible to normal debugging. For example:

$ sudo bpftrace -e 'tracepoint:syscalls:sys_enter_vmsplice { @[kstack()]
= count(); }'
/lib/modules/5.10.0-rc4-hubbard-github+/source/include/linux/compiler-clang.h:12:3:
error: Sorry, your version of Clang is too old - please use 10.0.1 or
newer.

But Jarkko's recommended fix works! In other words, applying the diff
below fixes it for me. So I'm replying in order to note that the problem
is real and hoping that the fix is applied soon.


diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index dd7233c48bf3..c2228b957fd7 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -7,9 +7,11 @@
 		     + __clang_minor__ * 100	\
 		     + __clang_patchlevel__)
 
+#ifndef __BPF_TRACING__
 #if CLANG_VERSION < 100001
 # error Sorry, your version of Clang is too old - please use 10.0.1 or newer.
 #endif
+#endif
 
 /* Compiler specific definitions for Clang compiler */
 


thanks,
--
John Hubbard
NVIDIA

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117030427.61981-1-jhubbard%40nvidia.com.
