Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBGXNQ73AKGQEUL2D5CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A0B1D6F14
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 04:44:43 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id o12sf2477744edj.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 17 May 2020 19:44:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589769883; cv=pass;
        d=google.com; s=arc-20160816;
        b=W6XdntGBWPpmIL8VgneaWjt0+8qiXtCJraJHacj4+4KnIqRjS2hw5QDiwrTXc064JT
         dEwWwYW+Z5RLRjqHAn0BvJfhOCcVrZ057Mc28t/Dd7EG3nxMReNK9OM7+zmSJKmEf5cT
         QXjdG2t4yq0eGj3WLWU2D97q+fFUXINWsEBh1BBEgDoRc4o1Oatw2GhXA/BeF76Yp4DX
         ZleOGdkAipW7KPTsKJqOV7bIeA+Hsfcf7+E6EtqNkpB6L4MlzxaETr+KUTLeEIP1P399
         9eKpG63/pjzEVHZbI9wi4FgJ07yAmEHZM+Dp+Ar6XliPSjRd6qU2YdseQ9sVWQJraUgF
         uv2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=B2/hlcsVaMFV7rry3b7LxunCh5GMMg91TEkmpCZ8PHI=;
        b=VKsbOBg06EY7np/d9OGUfOLj3+u74V8877eS8WataLVMrt9a4w0W1bhJQAPA/+hz60
         KvMy5FNbMMsIOOLQlMWRm8sh3f6gO6eNmJZU84XJ/UXJmZCVcQBP0H+ENLuo+qGTVnrT
         Le1uUqP+INDkAqcT/DksV3qVMUNvTdtkHqnYgtXW5+5Nhz7TEAmGk1faICouDTbBgDkc
         7LjCCEPphk7Khpo+xrl30c1woJgEt2zuRNrv019GfmSgj703dlk4OKi6IayR/yB/r4Lj
         DW/KqbfgU82tTQlyN15QOra76mYT3D0MlChwIrXatwgLex/LARf1PpFiTWAA8Nnc9U/Y
         j9hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=bal608dP;
       spf=pass (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B2/hlcsVaMFV7rry3b7LxunCh5GMMg91TEkmpCZ8PHI=;
        b=JTycc9ZZiKkNj6A+MbZynwrZ9opQOIA1ueYocUoq8ar3E5LzHcx0uCyWFi6js9aeIM
         XkZ2415NdALikc4MohSfPZq5yuWl0YLJ+Ot5pGMauouckUIwgxr27/KbmKQSkQpQzn2t
         MroxT70EpmUY0fdgwSxg++4MEo7KOAF8YrL6ecETfLqEkNuhVNRYdPL3j15FDZ3VV8hJ
         P704bYUF+7mSvNzpzrEAsctEmssXCOgmWOUU5Kxo4wwVbeQtO4paHuDOOzx7BGOoINbR
         FeTMpl6C34TJAs5savEHGj59Fz1R6LSjphkV77ZDupXA09CxDdLzlRfev/XKqll9VlvC
         a67Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B2/hlcsVaMFV7rry3b7LxunCh5GMMg91TEkmpCZ8PHI=;
        b=bVz5EemuFb1JNeBPy3tRcrfu6NkZbSFI1oqoeihlEXv7Qej+13HAbFjrAX4JGICpNl
         ARPtwHqiQ2tubIemrp3395SQI3XNy8iHRvPih10H7u30am93qjjhTxl8YKqq+ZoXkAgB
         7e3kyemOZVUcQjt1Ixv5zPI3+m/ApM491pFV3xo+OuyLSnMuuXXcc/IjqqYQnIFyCwf8
         2wVfBIDaNp9jwqAdL6PQLBhWMHWdLjpWR4nTqnQE7pklm8AF+i5DRhxpcX0cX488z3hy
         aLozYTUlBfwI5+UFVaQAHIrleSIhtH2HAB0a4oM3laKlVm4stUFvm4atBSI4YerpaxIO
         aBzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533eLHx7KbBi4yZeOuMpRLOlBlnbio5Qxfd5FziW0DMNScQsu5iP
	bVvNUC7K8OiObqutxe4xcFk=
X-Google-Smtp-Source: ABdhPJyspVKyGBTK2cokPCR2Rr9SxwGcRJq/qR4HwACaKfBnwYnGIt4zayVw70IQo9SseZA6mvp2rQ==
X-Received: by 2002:a17:906:1dcc:: with SMTP id v12mr12939624ejh.236.1589769882891;
        Sun, 17 May 2020 19:44:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:48c2:: with SMTP id d2ls3404467ejt.11.gmail; Sun, 17
 May 2020 19:44:42 -0700 (PDT)
X-Received: by 2002:a17:906:d10d:: with SMTP id b13mr7249545ejz.87.1589769882422;
        Sun, 17 May 2020 19:44:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589769882; cv=none;
        d=google.com; s=arc-20160816;
        b=BDwcguKfJapbQ/XJG/Xrdn3sF2Tc3qqi0Cd5XHoSZhNxDPw5axTxCyOeDZaW4OY8W5
         VrPf+xg5RHjszEmhwx6HbxRJEQQZ9JfbrZ2PDSJzy/rLxVQo9CIb5B3pNCBn5lwQgzxn
         ZJMaXk/i+kPNs17kuIVD7JeZDNmOdWAlvBS9vydkUVO191oJbjO5Afi6GqRKr7NoC8o/
         LpvH/1C4okiVs48NZcVgtVsb92twHlEFQdPsvYKXy9BeyRMRC7Cf6JQLX1fKJwuut9ou
         zTfloFdrnpjHRSwAHC+8WdKFC/cc7IDAQSWNuut1Pfv6rw3M3kaZ0GXlFfxAtiDMePv9
         XO7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=8K0sJqpLsIUnKAf2a0bGvl0VcjUMX3pFm+WYrpBq63U=;
        b=uOJUS6wCFXG/gLhNIRNMEVBrxMYQFnj9R+UbHhdbUQX4zorQ+jxia/eQz2OP7ua0yB
         bXke+NZ/7A/rmqcKW8Z1YEBXUpQM1EBa6KrtYNjvA8SEyBpt2o0OyfTtxziQut7Pxe9h
         n5gcJqa2JLgTHHB5kDO5f/sec+0zBbE7cMXXRfBLZ+bxSOojCc30IrN/aPWX273+ROuq
         EyMl7YtciHUwsh1Z74Yt55//iqByHhbh1Eqm89c3YUnmWVzwoFWgcJhjG5Vzca/r6Xk4
         YEe84jePPl/CYTIrcvmlz4aubYRvM2b16ARumcfkeO0JbWzk5S967vOJDdqAQHS67eWW
         /z6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=bal608dP;
       spf=pass (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id r4si311445edl.0.2020.05.17.19.44.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 May 2020 19:44:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Received: by mail-ej1-x62b.google.com with SMTP id l21so7575436eji.4
        for <clang-built-linux@googlegroups.com>; Sun, 17 May 2020 19:44:42 -0700 (PDT)
X-Received: by 2002:a17:906:3952:: with SMTP id g18mr13610750eje.191.1589769882137;
 Sun, 17 May 2020 19:44:42 -0700 (PDT)
MIME-Version: 1.0
From: Qian Cai <cai@lca.pw>
Date: Sun, 17 May 2020 22:44:31 -0400
Message-ID: <CAG=TAF6mfrwxF1-xEJJ9dL675uMUa7RZrOa_eL2mJizZJ-U7iQ@mail.gmail.com>
Subject: UBSAN: array-index-out-of-bounds in kernel/bpf/arraymap.c:177
To: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>
Cc: Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andriin@fb.com>, John Fastabend <john.fastabend@gmail.com>, 
	KP Singh <kpsingh@chromium.org>, Linux Netdev List <netdev@vger.kernel.org>, bpf@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=bal608dP;       spf=pass
 (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::62b as
 permitted sender) smtp.mailfrom=cai@lca.pw
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

With Clang 9.0.1,

return array->value + array->elem_size * (index & array->index_mask);

but array->value is,

char value[0] __aligned(8);

[  506.031548][ T4134] LTP: starting bpf_prog02
[  506.125326][ T4352]
================================================================================
[  506.134603][ T4352] UBSAN: array-index-out-of-bounds in
kernel/bpf/arraymap.c:177:22
[  506.142521][ T4352] index 8 is out of range for type 'char [0]'
[  506.148613][ T4352] CPU: 222 PID: 4352 Comm: bpf_prog02 Tainted: G
           L    5.7.0-rc5-next-20200515 #2
[  506.158632][ T4352] Hardware name: HPE Apollo 70
/C01_APACHE_MB         , BIOS L50_5.13_1.11 06/18/2019
[  506.169084][ T4352] Call trace:
[  506.172256][ T4352]  dump_backtrace+0x0/0x22c
[  506.176634][ T4352]  show_stack+0x28/0x34
[  506.180666][ T4352]  dump_stack+0x104/0x194
[  506.184877][ T4352]  __ubsan_handle_out_of_bounds+0xf0/0x120
[  506.190565][ T4352]  array_map_lookup_elem+0x90/0x94
[  506.195560][ T4352]  bpf_map_lookup_elem+0x48/0x60
[  506.200383][ T4352]  ___bpf_prog_run+0xe9c/0x2840
[  506.205109][ T4352]  __bpf_prog_run32+0x80/0xac
[  506.209673][ T4352]  __bpf_prog_run_save_cb+0x104/0x46c
[  506.214919][ T4352]  sk_filter_trim_cap+0x21c/0x2c4
[  506.219823][ T4352]  unix_dgram_sendmsg+0x45c/0x860
[  506.224725][ T4352]  sock_sendmsg+0x4c/0x74
[  506.228935][ T4352]  sock_write_iter+0x158/0x1a4
[  506.233584][ T4352]  __vfs_write+0x190/0x1d8
[  506.237874][ T4352]  vfs_write+0x13c/0x1b8
[  506.241992][ T4352]  ksys_write+0xb0/0x120
[  506.246108][ T4352]  __arm64_sys_write+0x54/0x88
[  506.250747][ T4352]  do_el0_svc+0x128/0x1dc
[  506.254957][ T4352]  el0_sync_handler+0xd0/0x268
[  506.259594][ T4352]  el0_sync+0x164/0x180
[  506.263747][ T4352]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAG%3DTAF6mfrwxF1-xEJJ9dL675uMUa7RZrOa_eL2mJizZJ-U7iQ%40mail.gmail.com.
