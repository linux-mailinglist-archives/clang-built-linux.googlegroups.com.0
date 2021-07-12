Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBQG5V6DQMGQEHYCJFGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CA53C45D6
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 09:26:58 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id w24-20020a67d1980000b029026e9898131esf5053399vsi.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 00:26:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626074817; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ba6IVwDZSTMVAf27vnkxfYjyifsm0dc0+CFQItpWMBRgzSKG/OYD6qYyOkNlfVMQVL
         Fz5IWb6kCf1F57bDBA6kmWGRwm3AV/1qgtViOYz98t0se5yRpFlsiFEBqP/I+Sh3aufv
         5mrC3bwdb/I+PVArTkGHIYx27bpsT9v9y+LLqN54zDcj2gSIFlvzTvW/Hbjp8soXtZje
         KyPG/G2pAWoOZBL3LbmOalStEAk5QBWyOtFxfdf432fD0vAYa7g1MoiKhOlkuTozZPDB
         2CkMQrQLEN5A5m1DQoUtOCakVB7JBFDSwATKOPZ5PzsZci8YeSwfB7mULnZ2gk4Si+sr
         cyPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=zC4FLCZ7xXhTQAwC/kjIbZVIdoytO4UmTcIxtcJ4k18=;
        b=rurASDH68ANULT+NT/U2c6gyySuGKoZrbhbFT3ZmyzKPVNRx7jajP3DXds1j3yWrmV
         eIFtKURB4bGhndajt6OhUrLP3RbPeRQc7IuQ5SbCnA+IOdnL08SUaRxawMq8gVml7MFV
         tDvJGeuE9cp6X24KM9BPXI6GrKg3nzI1m6Swey4OEoUHtEyJ6IDvA23wc8IQFfUAXQGd
         E6FWIdYnhtAgV1Z72APmkyePWFWCWwpbqHCXO+8E7L8+qcE2a/xScQPCsJOcsV2sm9zg
         q9BXhg1zwndtuZpGBim9lXwknzOtHaXq/2vtfJOhM64UguAbpafVys1W+t+7h8wOFHtd
         m0gQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="A9/YjWxa";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zC4FLCZ7xXhTQAwC/kjIbZVIdoytO4UmTcIxtcJ4k18=;
        b=lO5nh8ZveiMA/BCBHd/UNMwWkvWTKKZnsvKuOvPzhoIh5lygNuPnUmPlmf+reAbs5a
         SyRuLoXnl7NDq0MOwD4CW5X8p9/6lpa/YLgGSNKy+9yH9ii3leFRzb8idgirF25v95Rk
         8zqu/MqN5m9Sze9hXPgq1VlLXsE7NteDwFrh9vJbpCo/geaYN6ZnIH/+8wlPedtNZESN
         3mnlJeuujdEF7hzJdB8mECK7zYK2HVwzz2X/34xbAXGOwt83YkFFvZO/0b1dzwhCkOix
         TH/VQFXOzl2nmTrha0oSvn2Fvc1eJX+31FmEqMv7eNLkDBefhGe3F+QcPpSgDrpFxCBP
         kVTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zC4FLCZ7xXhTQAwC/kjIbZVIdoytO4UmTcIxtcJ4k18=;
        b=XmC8GN0jvBRqTJbsWY9khoc0rwGJEemEi3ZwEduKbAzRt01+KwjhvuZSRRUAxgJBBT
         DCHIhiu3k/gEBw4NREAThCdA8cVYUj+okpGm+gpKO5fTMZ6wWtbBimjjbbwrgdllWdJI
         zT8+ntH/cazw2B5tsjvvAXouw5Ub8Ehb65MWvtck3tjCk/EOfRFQheD02kPBnNya4UGR
         Rj7aX/0QBx3ctIayfDoGb8D76cQLaxw+gMKfDOGAJiJaLcF4cq+vLKaXxFsurV93aIoE
         zSyJKPBm9fXwfouVokGI28l5evvsmmayVvDljfCZYmPFhNSRVD5e5waVpkGwvryLzK5s
         H/LA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530PWZEJM6/TFQlKW0SNddrtuAbJb8uM6OF7Dg63lH985HOZroeh
	sSobZxxNA6exwAHmitVDYkI=
X-Google-Smtp-Source: ABdhPJyKORc75UoyiNujQ9M7nPo4F4ZBV1Zj3PKRMrNjgd/DMD3r3FsZLh1Ec/Guafn2eAoJIHQa+Q==
X-Received: by 2002:a05:6102:a83:: with SMTP id n3mr46228186vsg.21.1626074817157;
        Mon, 12 Jul 2021 00:26:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2d8c:: with SMTP id t134ls878799vst.4.gmail; Mon, 12 Jul
 2021 00:26:56 -0700 (PDT)
X-Received: by 2002:a67:e116:: with SMTP id d22mr47172231vsl.49.1626074816560;
        Mon, 12 Jul 2021 00:26:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626074816; cv=none;
        d=google.com; s=arc-20160816;
        b=aCiPoA92qKs9Gq6VnOEnplljgac1oZe4B6Kfka7l7H8XXO3BFArUtgoXRI3QbJ0g6a
         uCv/Uwa8Gv93vLW5C+vlsDy0BpeqUuIftHgsT+Fy30GEGnWb+IHQ6tPdq+IKbJy7jNnF
         umRVbN/b3oDl3XeP9G4GvST8w3CF3P1Im18VF3hqcr3rdIW9BC2axYOJS9QTYhi+DruP
         Q8owNsq/6ZtzivKw64CWqyNs6iV+Kh0BgRwQ15eaM1kx6dCPaC0edpjvznChdudZ+dnA
         lbeADIQHMUlN342uvLhsCucoISRXif+DJEWAl5BZe5syd/NhUFZiKj3narklG2RhC2j/
         tnnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=MlSaVpgL57P88D+FFKRhbi0ba24VEDZzEG4wCEQuuF0=;
        b=sd2VJ/8PhQjMs3W3I1p6IrgVQQhXjfE1fecK2s8oeix6Hrobal6gI7VG3GHuP5vX4N
         xlqou5ylOaJddDY5zznKj8os0VVOWBEQYOUU1eDMjd/hJPSVQVWKfdyjO9NVzzZU9Xg9
         qD8l8Lsb55snTZP1pjwJ4wpwxKvjSFeHzauGqqxJkBlhmeEJEA170pYKzQQLZgeewhsW
         eUwCq4g5ll20Z+XEpGHCxRh3mwGTwAkiD4P4I25qSds7YbUgImu2Ix8a7HGmuXWrRt5w
         kkJSIrAI5bcmgAavgXDZrWSbaAtt3/ySRA+DNHd2Us1BIT0zzkcDSuYsp/qzZt4StjmC
         wSQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="A9/YjWxa";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s7si242918vsm.0.2021.07.12.00.26.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Jul 2021 00:26:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 00CA0611AF;
	Mon, 12 Jul 2021 07:26:55 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Hulk Robot <hulkci@huawei.com>,
	Zhihao Cheng <chengzhihao1@huawei.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Andrii Nakryiko <andrii@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Ingo Molnar <mingo@redhat.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Yu Kuai <yukuai3@huawei.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.12 678/700] perf llvm: Return -ENOMEM when asprintf() fails
Date: Mon, 12 Jul 2021 08:12:41 +0200
Message-Id: <20210712061048.018913193@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210712060924.797321836@linuxfoundation.org>
References: <20210712060924.797321836@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="A9/YjWxa";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

From: Arnaldo Carvalho de Melo <acme@redhat.com>

[ Upstream commit c435c166dcf526ac827bc964d82cc0d5e7a1fd0b ]

Zhihao sent a patch but it made llvm__compile_bpf() return what
asprintf() returns on error, which is just -1, but since this function
returns -errno, fix it by returning -ENOMEM for this case instead.

Fixes: cb76371441d098 ("perf llvm: Allow passing options to llc ...")
Fixes: 5eab5a7ee032ac ("perf llvm: Display eBPF compiling command ...")
Reported-by: Hulk Robot <hulkci@huawei.com>
Reported-by: Zhihao Cheng <chengzhihao1@huawei.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Andrii Nakryiko <andrii@kernel.org>
Cc: Daniel Borkmann <daniel@iogearbox.net>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Yu Kuai <yukuai3@huawei.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20210609115945.2193194-1-chengzhihao1@huawei.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/llvm-utils.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/tools/perf/util/llvm-utils.c b/tools/perf/util/llvm-utils.c
index dbdffb6673fe..0bf6b4d4c90a 100644
--- a/tools/perf/util/llvm-utils.c
+++ b/tools/perf/util/llvm-utils.c
@@ -504,6 +504,7 @@ int llvm__compile_bpf(const char *path, void **p_obj_buf,
 			goto errout;
 		}
 
+		err = -ENOMEM;
 		if (asprintf(&pipe_template, "%s -emit-llvm | %s -march=bpf %s -filetype=obj -o -",
 			      template, llc_path, opts) < 0) {
 			pr_err("ERROR:\tnot enough memory to setup command line\n");
@@ -524,6 +525,7 @@ int llvm__compile_bpf(const char *path, void **p_obj_buf,
 
 	pr_debug("llvm compiling command template: %s\n", template);
 
+	err = -ENOMEM;
 	if (asprintf(&command_echo, "echo -n \"%s\"", template) < 0)
 		goto errout;
 
-- 
2.30.2



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210712061048.018913193%40linuxfoundation.org.
