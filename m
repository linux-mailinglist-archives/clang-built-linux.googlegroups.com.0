Return-Path: <clang-built-linux+bncBD5JZUMX6AHBBXF3T6CQMGQEVZZSRKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B7638CADF
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 18:20:45 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id t4-20020a195f040000b02901dfc7237858sf5345060lfb.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 09:20:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621614045; cv=pass;
        d=google.com; s=arc-20160816;
        b=QcJJa9+4lxYqIy4PVGGBa/XWIYf0x/eVbB2x8aYz7Cv2N7SIl/AxFOvg9983xsYNwZ
         Pi2num2qzFjnikSdS2QgxzI/UnqxGdU3jGe872uGhUCWUodnC8oLiJ/gw1qO8QmZZFOZ
         7ObbBGrQtg+Ww+TRKT5SeHmhIzCDKSmvEMlqYK3bAKQjM3hgpHlFRZ84EwojD9Bp2iWj
         Nrf6eKIP1I6UBts2EP9jnQY2Hy4ubtW7OA2QtXxR3Q1RHYPk18+AhjXDvUBXeyilnWft
         aomeciiy0w1CCJOUtHexz5ksD25o9e+v5lgWGQtqnVVrpg0pdD/mlZP46fn6HoMMB2Gs
         1d6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZYqO0Laj6UtzxcWRMPcH5RbueHJ+1j6kV0mpNagQkjs=;
        b=M3HjRqVp1whbikiDwB2w/W7HezM6kejqhW7ozoNMaayYIZrzAgIJ1hAW9DkUrr3MHS
         rANn9qXY4A6/A0T3dt1O1sfsOoHgkY/iJT6ga9CfMUH90qc8tzZ7JUdisJue5SG9O5qp
         rSBn4Qbts6oa0tlRMJ6S3SlIaPYIaFW7pMUcyPrsS3/rhn5zZ+I0Ge2ME30gfsa0ubWr
         Nt/Ny6x1CzGrbUV2+xmYS+e0t7d+Um4J3wCvdtamzvA1ZoOl3Hb8dNIylPHIwYsC8xdZ
         obzR2TzvUaLNX8XpSUbtiDSUeqw+JI5IpUS0OBWDYy4O9vMyz6/NS8BDv7A6h121sgec
         zSSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=scjoFZhQ;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of msuchanek@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=msuchanek@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZYqO0Laj6UtzxcWRMPcH5RbueHJ+1j6kV0mpNagQkjs=;
        b=jaXD0JITY3mPyz+I56vbVuSOlFiMcJB/PKzMNRJ1INVuX5tCBGYd16chaoQZsC5Nnm
         3AieoZYLJYeE95Rm2xOFM6sQrQR1tzSGMylPBz8OhcXEnjW7zlqU45tuNx6bPj2ACRjL
         RcwEslZyuZHaNoGgcJlOAnv5dhD1qsU6NucnDbPGfCgE+vSRG/MAiy+PkeIJUu51ewO8
         FyTZRNemCFhnfdwUmmHit3ZLpCmb1sqCp/3q0n5j8pYHdd/oSjs9jIWZPQSe6KLd5qGH
         gXJiu2wLDPQccbt2/ZPn7qjyMQu1lNuwHXyUf23RE8KoFsWNIJlOjML1VdGLeVmt1+cM
         +k0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZYqO0Laj6UtzxcWRMPcH5RbueHJ+1j6kV0mpNagQkjs=;
        b=DWFQozAjGtaLQME9ex79zsp0ZpCfqIHtw2S2+M0L2MdRD7mNXH8R3H3iVQ/gWTLiOD
         PtGltAjBLsVgZGGkCpczqZgYAqYR8cZqL40mrLKktY4pHXtv8hpkhBN6kxOCRg2Ktcmd
         HldwRtxzULpaPECvkj1Ku9TsRaEXfQIPFIpVzmbJWn+KZ12UMix7XYOQhSCvKZ0KUp4p
         GcQjs/1aGeXjVQxk5YSnCCdGn/NI1R0c4xzZy6NXIrtNZjodjZpayiYfnUmAgzNp9Poq
         bZK7laBThhhzvkGMIHOBxc8kGFbZ+Iw6ECYlH6IOzfA5r7cM4t8JX68YBHBgocu+W1od
         Xq6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mhTBrRYeiV5cg7WkpQDMRejZd+YcH6D8ZA6FMLW4yXJ5yKN8Q
	hfYmrVOJ+CX72eqoUOWkq7w=
X-Google-Smtp-Source: ABdhPJzSYXrKa4EmVW3NEj+dPkgDbreNAPb9RzNg2MX6OFZ+JR/0uvcrl4wYsPdbJfdno5HO/SYqzA==
X-Received: by 2002:a2e:90c7:: with SMTP id o7mr7524251ljg.368.1621614045045;
        Fri, 21 May 2021 09:20:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf0f:: with SMTP id c15ls1342757ljr.9.gmail; Fri, 21 May
 2021 09:20:43 -0700 (PDT)
X-Received: by 2002:a2e:5853:: with SMTP id x19mr7142749ljd.483.1621614043809;
        Fri, 21 May 2021 09:20:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621614043; cv=none;
        d=google.com; s=arc-20160816;
        b=AREllLCKYJSpjSn15F0YYpzqyVkSfm1MuWWStSNhFfyXDvpkguGpqJnA76Vcf++vmV
         m2FBGXLgWiAelNqB1Ep6ZBM9EtWUYksrBWvuR/Xi/ljd0WJOvCfDuTbBnpHO2Pf1lRlp
         PynZRDduoBb0BxcGVCBDeGJ2HsqwBlXzLIFwkJVCvTloWNxu78xJa40fkXfHe5iefeEq
         f4kayoza3Vvj5SnCZC9uUxyPDXWaWVjCxe6ZSFGJOx6Je06FVqvm2pL8RSEWVr9KKnJU
         1snWtOJTc8uIhFD4dH8Oa5MzsYzVTcWoCJA5zT7Pgupgur3AnEQMSqE+Yk6njrhtlHjJ
         a21w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:dkim-signature;
        bh=0jku9GTWoW2j4X3kuE24CEPxpjUZoyrELhmnmA6WIRM=;
        b=Fs9v7ZiG622RRPS/rzEdWTtLfJZ5WjHApQZQcd2Hq2y9+mKix5xbZIlIsz0fkQ/zzx
         ONlMBZdx+BAit2IwEXEJP+Mq2SsyH+h0zWhkyVWQuImNUQ7m3aV8b8zAepnY1aDEd27L
         KQbnjFGxr9QXW2LA7EAvBlaWV/BrZBWV9vg7iqYHrLLNzzCTtbTXTkNLuNskvAbFLgoK
         hpjqEzSOOSwWkRr50kQkcfZukVKDOzKrpwkxiYonZZKBJVrthMuidGWzfg9v3jEQv+1k
         PLAdGNDM11Pmko/lDCpj2YXcgzlLb9wXa9L0tVwZcR7qXWYKWRsWXhIJU5U27Z7MEghf
         vOJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=scjoFZhQ;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of msuchanek@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=msuchanek@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id e9si351409lfs.4.2021.05.21.09.20.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 May 2021 09:20:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of msuchanek@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 063F4ABD0;
	Fri, 21 May 2021 16:20:43 +0000 (UTC)
Date: Fri, 21 May 2021 18:20:41 +0200
From: Michal =?iso-8859-1?Q?Such=E1nek?= <msuchanek@suse.de>
To: netdev@vger.kernel.org
Cc: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	bpf@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: BTF: build failure on 32bit on linux-next
Message-ID: <20210521162041.GH8544@kitsune.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: msuchanek@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=scjoFZhQ;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519;       spf=pass
 (google.com: domain of msuchanek@suse.de designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=msuchanek@suse.de
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

Hello,

looks like the TODO prints added in 67234743736a6 are not 32bit clean.

Do you plan to implement this functionality or should they be fixed?

Thanks

Michal

diff --git a/tools/lib/bpf/libbpf.c b/tools/lib/bpf/libbpf.c
index 69cd1a835ebd..70a26af8d01f 100644
--- a/tools/lib/bpf/libbpf.c
+++ b/tools/lib/bpf/libbpf.c
@@ -4565,7 +4565,7 @@ static int init_map_slots(struct bpf_object *obj, struct bpf_map *map)
 		targ_map = map->init_slots[i];
 		fd = bpf_map__fd(targ_map);
 		if (obj->gen_loader) {
-			pr_warn("// TODO map_update_elem: idx %ld key %d value==map_idx %ld\n",
+			pr_warn("// TODO map_update_elem: idx %td key %d value==map_idx %td\n",
 				map - obj->maps, i, targ_map - obj->maps);
 			return -ENOTSUP;
 		} else {
@@ -6189,7 +6189,7 @@ static int bpf_core_apply_relo(struct bpf_program *prog,
 		return -EINVAL;
 
 	if (prog->obj->gen_loader) {
-		pr_warn("// TODO core_relo: prog %ld insn[%d] %s %s kind %d\n",
+		pr_warn("// TODO core_relo: prog %td insn[%d] %s %s kind %d\n",
 			prog - prog->obj->programs, relo->insn_off / 8,
 			local_name, spec_str, relo->kind);
 		return -ENOTSUP;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210521162041.GH8544%40kitsune.suse.cz.
