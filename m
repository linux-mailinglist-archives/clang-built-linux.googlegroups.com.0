Return-Path: <clang-built-linux+bncBD5JZUMX6AHBBA435CCQMGQE2PUDLSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5750F39B7CF
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 13:24:52 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id w3-20020a1cf6030000b0290195fd5fd0f2sf2298853wmc.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 04:24:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622805892; cv=pass;
        d=google.com; s=arc-20160816;
        b=RKkGHv12a9mAPDPXpzdMAv0XsKb62KfJ1MVl5RW/7TQ2LRFEcx6/88ZVIjXXusHBqp
         8Ekp0MvmJOKM2+AC9dd2wHj9F+sPVQqfjzPKZsBO7d4v6vOmhNWdxVMkN5eojFEIiTg6
         5sl5deamIjL1iGoa5UmViMBJzGhxr2XINTmx+w9JmK+FyHJ8I40I2Ux8t8vkWD2GfH7f
         Wrz+DagofsPmxk3rmLPFct3CYcdN8SvlxmayEADVScVuYwr5NNySi26TVPsAcuwlDirk
         t+zzgvAfNOsvsbDF2vIP893qQOUFA1ATSVlCeKr5WSBD6fUi2omyzxhSf/aaB3M5bYLC
         o6jA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=iiEmtN8AzycKPAgAgS+hoU0tYKMTM303IsBWZW8M5mQ=;
        b=l95qcpOrhsXAz93TLlVX4IaWKaiq5LC/f54y83CymyNGSn3+aHrSwtaqaGz7jmlWIq
         3wBU60dobaF2VHg+G3/MBQD6BDQEkMgSQkrvzYqYdi9uif8vBYjabTDDexYokwZO62VN
         amvG72hLU33mcsCtl6uouw12+19k6/ioUNWObE/4tZ9RMzbgWnE+ViF5/pvIwnhD4TUl
         8zJ84/rD7kvlWdaTFvoDsnAfg+ivzsJ2GM6L08llFVVWk9Bx/H2PoQBwSWUb7zW4THuf
         MEj/4GYDB4srfZRas99jK6X3cxbIV3os7b/MjIJ8bM2+mel5qaix+8jPzQNn0pJwhRDs
         0RaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="Elr/q18V";
       dkim=neutral (no key) header.i=@suse.de header.b=hRjuEO3z;
       spf=pass (google.com: domain of msuchanek@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=msuchanek@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iiEmtN8AzycKPAgAgS+hoU0tYKMTM303IsBWZW8M5mQ=;
        b=sBso4l6DyXBt2scmrgpGLyH9picoePMwCVroPPFov2Wk4ncwPilVowZuXwUi7ppF5G
         0CHZXgrI/r3kMSssyUb1+ooDa7CrLCYkoBjymSFej1Lo+MY47uhEJ5TM9OtgQXk0o6kF
         wMulvr6L42aIb2aHUZWO01Z7Tnif8lhcf9ogIEz6le/TCAistTOTcKsmH6aoi4+oD3pM
         KSsYa6GJjbwNy//MI0Xd5CKwQkECZ9YstkM9fqaOqTQDO4iPebjAa3SjNAmvb5yIod+f
         UuBEjX4VnwWf/ACw/1btBgggYfIPRkll6PwSNLpXj9LgrFhq08RiKMZHHyyIP2gkaxDT
         XIVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iiEmtN8AzycKPAgAgS+hoU0tYKMTM303IsBWZW8M5mQ=;
        b=JjmWPyth9QTy+y8EyQrBl8l4D24YR9vO2HgtQwHqviJonEpz65n5CErvmYO890BQcy
         9rljmtirm+yjzqN+RBgsTrbueV0TgwdCEpyXcFKQHGO4g8MIFtryFEaRx6X/zY3heUAW
         bHT1/iaWhHNlqpruIokjFu7veS4SWJodIFcFlTVj3pDbKLbprdJhNNm3snOkHGh/Uwoi
         TJmeLfih5x05QSBdCNzWI41rRkrU0zxwg1TcyeRy7D3TEaCdQ2uMnX4EC2DdIIwsIpo4
         kp6mVMU/XUbAlBNmni01lk3GzYhv9e20cngAPBGnVWcov0vJ44oR3U346TLnwr29pWvk
         SpWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+CrmoJh1SNqFC9U9Wu/TY/84IGeTH4S4RHqtrbccxitEsUMAl
	Lco+vgfWibtGDExDloRCs+g=
X-Google-Smtp-Source: ABdhPJxN1k2mbjEzhWpSr5KPgtDaYXeLeLAOHiz1rzMx5/wYn3SSgvchpc2/ihb56udSuEbzw7Scug==
X-Received: by 2002:adf:d1e3:: with SMTP id g3mr3386516wrd.21.1622805892021;
        Fri, 04 Jun 2021 04:24:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:5988:: with SMTP id n130ls2152641wmb.2.gmail; Fri, 04
 Jun 2021 04:24:51 -0700 (PDT)
X-Received: by 2002:a05:600c:3586:: with SMTP id p6mr3249502wmq.48.1622805891204;
        Fri, 04 Jun 2021 04:24:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622805891; cv=none;
        d=google.com; s=arc-20160816;
        b=hqbONL58l8w/SKkt9++UByoW5Y1QXJsbxqayloHVAac1ML/4g886rZ0MpKed67Q4qn
         tV+Vwfr9UzzBv5f727V/7f1yRa95AKtGk2e3Tcc0NmEUEx9fgnkaBCqipEJ+9NusoNAi
         ZMbLHQbiP8SuCK/0mREnaxgdmPCyk2z1GQPQOm5AFxOq7zt6dlDzf4+M2qF0D7CEzLdD
         sXofZLdY09yRgpIkySsFkHMcl17/MEn2CKUipTNsSXA4aexuMz5ObheVMuyuGmjae/KS
         L9ei2S4ucuCgMsnGZzxN+7zQyqFJA/QILnsNLYwbhjdyRTi93Itw8he2dbOiiCTPyr3D
         IVJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=KvwB2iX6N3U8dsxrAx26cUnRKNUIXsfqg7dJXyh1/xw=;
        b=FGy6itQo7Zwzbvp8wF2mvojnMbk6Wk3/tWsURd8U4SlySY+V+swGcXSwPNXRv6gDLb
         Zp7evit34zSC41Gyx/phMLVR4oiD4uWkMk6aUB+jPCyAwatNmWyErtmxSuAdQ4qwumo2
         HslM4uOtDAIaG7PRALHbL/icLVZxXp3S9F2W2ap/Lrad4XBFWbuWZ9qJ2yOHJuOr3U+t
         Uhn415M3bZ6TfEt5eoRMUsQquaa59SiQKE9UnaqNjkBUu2JEyRCfDtDZmiVIitSYrxMf
         C6hJeTUGn8lmK2pG4KLmqzXeOiGFQvXUN446/Oe0eyzNKNq9yAwJr/xDXzZYyZR8Mkka
         kmVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="Elr/q18V";
       dkim=neutral (no key) header.i=@suse.de header.b=hRjuEO3z;
       spf=pass (google.com: domain of msuchanek@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=msuchanek@suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id h20si145186wmp.2.2021.06.04.04.24.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 04:24:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of msuchanek@suse.de designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from relay2.suse.de (unknown [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id D49701FD4A;
	Fri,  4 Jun 2021 11:24:50 +0000 (UTC)
Received: from kitsune.suse.cz (kitsune.suse.cz [10.100.12.127])
	by relay2.suse.de (Postfix) with ESMTP id 98516A3B85;
	Fri,  4 Jun 2021 11:24:50 +0000 (UTC)
From: Michal Suchanek <msuchanek@suse.de>
To: bpf@vger.kernel.org
Cc: Michal Suchanek <msuchanek@suse.de>,
	Networking <netdev@vger.kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	open list <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: [PATCH bpf-next] libbpf: fix pr_warn type warnings on 32bit
Date: Fri,  4 Jun 2021 13:24:48 +0200
Message-Id: <20210604112448.32297-1-msuchanek@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAEf4BzbgJPgVmdS32nnzd8mBj3L=mib7D8JyP09Gq4bGdYpTyg@mail.gmail.com>
References: <CAEf4BzbgJPgVmdS32nnzd8mBj3L=mib7D8JyP09Gq4bGdYpTyg@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: msuchanek@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b="Elr/q18V";
       dkim=neutral (no key) header.i=@suse.de header.b=hRjuEO3z;
       spf=pass (google.com: domain of msuchanek@suse.de designates
 195.135.220.29 as permitted sender) smtp.mailfrom=msuchanek@suse.de
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

The printed value is ptrdiff_t and is formatted wiht %ld. This works on
64bit but produces a warning on 32bit. Fix the format specifier to %td.

Fixes: 67234743736a ("libbpf: Generate loader program out of BPF ELF file.")
Signed-off-by: Michal Suchanek <msuchanek@suse.de>
---
 tools/lib/bpf/libbpf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/lib/bpf/libbpf.c b/tools/lib/bpf/libbpf.c
index ef6600688f10..5e13c9d8d3f5 100644
--- a/tools/lib/bpf/libbpf.c
+++ b/tools/lib/bpf/libbpf.c
@@ -4584,7 +4584,7 @@ static int init_map_slots(struct bpf_object *obj, struct bpf_map *map)
 		targ_map = map->init_slots[i];
 		fd = bpf_map__fd(targ_map);
 		if (obj->gen_loader) {
-			pr_warn("// TODO map_update_elem: idx %ld key %d value==map_idx %ld\n",
+			pr_warn("// TODO map_update_elem: idx %td key %d value==map_idx %td\n",
 				map - obj->maps, i, targ_map - obj->maps);
 			return -ENOTSUP;
 		} else {
@@ -6208,7 +6208,7 @@ static int bpf_core_apply_relo(struct bpf_program *prog,
 		return -EINVAL;
 
 	if (prog->obj->gen_loader) {
-		pr_warn("// TODO core_relo: prog %ld insn[%d] %s %s kind %d\n",
+		pr_warn("// TODO core_relo: prog %td insn[%d] %s %s kind %d\n",
 			prog - prog->obj->programs, relo->insn_off / 8,
 			local_name, spec_str, relo->kind);
 		return -ENOTSUP;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210604112448.32297-1-msuchanek%40suse.de.
