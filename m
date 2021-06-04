Return-Path: <clang-built-linux+bncBDM2L4NMRYHRBIW546CQMGQETXFIURA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id B941739B59F
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 11:13:07 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id u23-20020a1979170000b02901d2e8dd801dsf3444324lfc.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 02:13:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622797987; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jkk+7paWB2vqbW4d+tnjL0Zck1WxZ5S7tyIhXxRW6noaND+5PzWZTugFRH/5AbnVOq
         16lH7VqNWzNYI0wG2wmJRCYZ7RO5z2SacjeESIcXpizVblI8g0/9mBE3ZoayCtSDW75H
         7c7cEDnN6lQMHHbonzImXs3DeNgg7vEVuJzzEa4Z73nrx72b8AumRF5ig1wZHO+LHJmL
         h8RjoGAcJl8oPqA+68DvvGzoxZzCAk7tbUpaP4whgZJqseeSOLH0zgI6e+o+Dz7jlxxC
         /8ry10mtF5ITop0KeIW/7e52d4IsC/2e4JufnlYJLFuE/K7lIgZxUiBI6j1qKd/8cjvq
         EdfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=y9R8NaxXtjB56fWXeeqc2maFI85rCZ6IeN+LmUEpgow=;
        b=UrjB5qTO5k/C9czHcK13XJmicms7zfc0SZr2zbq6H/Org+gL1PJbScBqT438SFEiZz
         apuSeEIaxk8YcZS4bf5ApOmDMEKR39NHz9l36rX6fSPnd9s/+ro+ajoVXL7ZtPIIvT0H
         07j6uYST9Fa4WcSHqdMlRtBCf+ELqOgjewKG3pLPLPWJRnv6BklKBDI5nPgqc3Qqcc4t
         BZ8ExxsI//FmR2K3V2MgV1I8Zw906W8LPBTyE75axAwI7h1IsRBfHgZXq3pEr5v6oUDJ
         WNWExoNEng4GKXUoea43LSJMDxOkMFhBXWzqsNZjt1R3k3EXUpHdvioV2Z/ed2yE7jw3
         UGDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=iF94tEeb;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=iF94tEeb;
       spf=pass (google.com: domain of nborisov@suse.com designates 195.135.220.28 as permitted sender) smtp.mailfrom=nborisov@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y9R8NaxXtjB56fWXeeqc2maFI85rCZ6IeN+LmUEpgow=;
        b=fEyUMvi8yisHHvgzYHkoDevZykfsTVnYlcJ6wb/LEd1qEdk/Xil/9quo7imP7S9IN+
         soTjLcw1XIRMM/UfgGDdLIVl7/6cPspWS2hDef8n6a3f93j/7Up/7jUPopi5/cxbiqMw
         FvHvTCE973z90yGXr4+JUbDbsLWTbfTjGOwvZpfzrk5FmHvuXDHCQ4o/KWfb2Tb9USYk
         Cm0ryrocEceo1XE6HSH80XiZZtclQHkXLIdkftN+UlSrf8GTDqt5iIKIV3hRAMmTB14H
         jh8rt7ymYlbcMaQiwMdMFyjZ8WxsQfZkF9ArvS9ryRi3GCMGJ+YrHGuuuaDQqk9o22sl
         aKXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y9R8NaxXtjB56fWXeeqc2maFI85rCZ6IeN+LmUEpgow=;
        b=N8KlEpVnXEPB2690G9uMskCys8rINYA8T5/QEf6Fa+T7d+9QYvgetnnkEzucjRyvK+
         aQgN6Bxfn7jSB1yuwxia3poGrSrCydfpBdNmEo/4P0wSjBm6GyMoxqyhgc8r6NNYdd7W
         qHblxrVXithAV/k7adxTNowG86mlWmaWUgz2Almc2Fzrv/j8qNSqGic9WESkDM4gQHnz
         8EojgiAQOJCC+hz8no/9l+eMc4Ss0eV3wAvH9G5qdcxtgijv8ZfQaKhmpOpcuos5Wlta
         8ZhJkmZB4yLjifN8S1ttG9W4cvY7AoXzRpar6xt1gONHkfknSYb2nEZ9AZGfccKcCQVk
         JcXA==
X-Gm-Message-State: AOAM530YKuhwBKXpNjCNCRbvq+22CVdEIsz2/4Po92R41mHABBvqZZkx
	aKZ7s2sVBOQWwBntP9CLBX8=
X-Google-Smtp-Source: ABdhPJwxqWcRRxOBEjG4MlANEurIfII15kOWNbEYGsR+kqBiusLfcP82gkK4MS0hSUmehI5gVneaWg==
X-Received: by 2002:a19:cd8:: with SMTP id 207mr2175931lfm.322.1622797987141;
        Fri, 04 Jun 2021 02:13:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1199:: with SMTP id w25ls113446ljo.1.gmail; Fri, 04
 Jun 2021 02:13:06 -0700 (PDT)
X-Received: by 2002:a2e:a71e:: with SMTP id s30mr2785174lje.93.1622797986091;
        Fri, 04 Jun 2021 02:13:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622797986; cv=none;
        d=google.com; s=arc-20160816;
        b=LkVoKIPRppNWHpET2jkWvbVyx0Mx0Ze2oezHfUG4UrWfv7dOIemnqvR6t1ms5VecYu
         w1fNQBHvyBRVuAXq+cLZ78qJ8IF5fUvNfqRNIP63NU8Z8gacFD0UostEfmxq848Nis4E
         2eiivPhFkbd9ItoTXQU5lncE1aijbk813kNHTmZTdCn7f2um9z2EL5T/xyJEQc+zyj7U
         f7mPS8YYI1PSeaSL93vG2zlHoVj6v3LSHNLyloEo1l6wHFq0Q3lSkvRJaYpyMjtC6PA+
         5wIerSNeeA/iLO/T4OsvsrtQ0XLjT+zmjsTQy38G3jMcMYawBcHJ26ik5GK+M5FPuVw5
         DMvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=zg82xsskpBEPuu/jfxoQjwLs+XWcFGem7XD7XTLcm0c=;
        b=zrh8yPfgo5SmWIU+iKTOooeAWcnkJInOz7TtXCTxKyDlI8GzmZNvfqQJiLvIX0+4Ss
         mjeJs50IzmHrvyjrMd7C179W0KH3xHUPiL3LTF8v+GV17wdLMqACNs9VoT+5L2itgdbw
         9DE13WGG0D29l73sv87+9XQzwr9Wsyqfu7o9+DFDHPDdEX03e9V1I8NuwOPROOwn5zEt
         OrFQDWodBfyxk112G1flHQ/1IPGLT9e9WBD3JEmLhN036O/im73gQl2ZrAQ0JMz9d1J2
         F5SDOK3/7iBMF5ilTr0GIeNQW0vsUXfchoLlu3bbMRSjYbyO75UhnQLZ3NXDM5zIuenZ
         7QVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=iF94tEeb;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=iF94tEeb;
       spf=pass (google.com: domain of nborisov@suse.com designates 195.135.220.28 as permitted sender) smtp.mailfrom=nborisov@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id w26si209464ljw.8.2021.06.04.02.13.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 02:13:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of nborisov@suse.com designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from imap.suse.de (imap-alt.suse-dmz.suse.de [192.168.254.47])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 4939E219F5;
	Fri,  4 Jun 2021 09:13:05 +0000 (UTC)
Received: from imap3-int (imap-alt.suse-dmz.suse.de [192.168.254.47])
	by imap.suse.de (Postfix) with ESMTP id D8CA9118DD;
	Fri,  4 Jun 2021 09:13:04 +0000 (UTC)
Received: from director2.suse.de ([192.168.254.72])
	by imap3-int with ESMTPSA
	id KvW1MqDuuWDBZgAALh3uQQ
	(envelope-from <nborisov@suse.com>); Fri, 04 Jun 2021 09:13:04 +0000
Subject: Re: [PATCH] btrfs: Remove total_data_size variable in
 btrfs_batch_insert_items()
To: Nathan Chancellor <nathan@kernel.org>, Chris Mason <clm@fb.com>,
 Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, linux-btrfs@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210603174311.1008645-1-nathan@kernel.org>
From: "'Nikolay Borisov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <123f5904-9f0a-aef2-3c9a-ce36dd85b571@suse.com>
Date: Fri, 4 Jun 2021 12:13:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210603174311.1008645-1-nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: nborisov@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=iF94tEeb;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=iF94tEeb;       spf=pass
 (google.com: domain of nborisov@suse.com designates 195.135.220.28 as
 permitted sender) smtp.mailfrom=nborisov@suse.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
X-Original-From: Nikolay Borisov <nborisov@suse.com>
Reply-To: Nikolay Borisov <nborisov@suse.com>
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



On 3.06.21 =D0=B3. 20:43, Nathan Chancellor wrote:
> clang warns:
>=20
> fs/btrfs/delayed-inode.c:684:6: warning: variable 'total_data_size' set
> but not used [-Wunused-but-set-variable]
>         int total_data_size =3D 0, total_size =3D 0;
>             ^
> 1 warning generated.
>=20
> This variable's value has been unused since commit fc0d82e103c7 ("btrfs:
> sink total_data parameter in setup_items_for_insert"). Eliminate it.
>=20
> Fixes: fc0d82e103c7 ("btrfs: sink total_data parameter in setup_items_for=
_insert")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1391
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Reviewed-by: Nikolay Borisov <nborisov@suse.com>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/123f5904-9f0a-aef2-3c9a-ce36dd85b571%40suse.com.
