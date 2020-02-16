Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZVDULZAKGQELY3JASI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F959160146
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Feb 2020 01:50:48 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id a74sf6628663oib.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Feb 2020 16:50:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581814246; cv=pass;
        d=google.com; s=arc-20160816;
        b=BN5YGp9MgATFdzEwbqqZVcMyVU1G9eMfMjrzmMYGHTzTnLnfXaTuLhhIQdcz/DXLKW
         d2HilOSUR4rozZ0GIM19Omh/KxkWro4vTaFHUnI8bOMlb9R6Ktfs+JcSvJu0NqYuMRCx
         M45s60s9GuC+yzAkCF4MH2dSQvhRU1xTcchZrrVCKYbTFzq7yMLrsO3k9QFiJBL2hpQp
         MYTB9lM6JmZQWz62cCRelku/jlaA+snt/JJhbMdFKBFFA+0pPL7nm7odqtWcQVTcY4Zs
         uGw4YISrlY3sF9wtMpXE75ZYxmDVvgjaAKlMueUvLlCx9t02Km+mApeEM/F/Jfr+VGnp
         /suw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=qfKu/RQU/N/hHa8fU8Bm0B9Bzi5Is5UgAq5i89GLBBQ=;
        b=LZOJWZI05zfbQx+mXZVe1PZtG3I3HbWbROyruQuAnuqqtHTGQfqCQYVHhvqvVyngJp
         WkduL1PbWjmoBZVagxP9BRUYm3Q3yFcl2ZtYoWmAvYDZKhPZv2N6N4QAmsO47B4GEG6I
         ONIIhUX2MdboHl1N3AwHJi8NOQFwKdj7I0ajWYRQZ3T2WBo/KIhnlNqFPbXjiuzMOV3p
         HYZ8AnU5lLahkrZ9Cizl6Eg8ob7N+AJFyVuEuwRGZ79D8hxuGaCw36WDFCBWuasmBGrW
         u/iC6Y1l6vZZGjg4VbJy61tYe1KPqkzMQeMZaf9cWKdzOHXM2PpLbG5O8zmtnT5GyOPL
         nnqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rBOG1Nlo;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qfKu/RQU/N/hHa8fU8Bm0B9Bzi5Is5UgAq5i89GLBBQ=;
        b=Fo3Y3dGsG4oXDTj5YsiK4BNzDSixV4vXt6+oPR6gbOAY2PX4rzd0+V85YwlNUUzpiV
         2UqOc62wBEE7FrWfKJajMYutGijMRCqmWnh8Zny9nN/0hohCSMg1Pn1gavi77Bw8i2z6
         hz0F1NGw22x21jZtyNcZFF3MCYEwr4c+mehyiRrqMEONFVL5PqrIUl+Ayl/ldMlPIK/l
         hKTevklgSPeFWWtAVHDZZY8hEg/wo4gcoOnqUNR7LensbzFGwToEYrldcVZQvtDfHUeD
         SGwIfWjml/nvBH6aWb4bsGmUBXjkP4JOF5UH91rpVhEFdmNKvcP+tTY+Nvakj2ge5Sqq
         wFNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qfKu/RQU/N/hHa8fU8Bm0B9Bzi5Is5UgAq5i89GLBBQ=;
        b=TWEBAYPqp/pp0+oi8Z+cmEoQJPNZ+7PK/j9GTK7Jutrof9Vxt36KH6Wx2k8IXzjo/G
         VVS6vbzsZqy/0pNWeLaMw/cvvjWaWQAqwBfJEv+29JhsJ0b9yIZ68dKh3mbhdDE1rFvZ
         eUIi/6xxloDlomzchJDg+LpridBRZKQZFWSgbmXuQHz+eX07txKeBZleuGLMWmXN6fTv
         z0jBZzvFuTUVIwtauWdzLncEOO1ktafFI533k8T3fSKu/Gx0poWYe+8aMcyTINx4w6NU
         PHirEH/RtiHGpkCbN9y0bjmGCuvigShZVUltEW6MjNgxdFku8Yl4rdtauaAK22SOrp/r
         huew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qfKu/RQU/N/hHa8fU8Bm0B9Bzi5Is5UgAq5i89GLBBQ=;
        b=X0A3P4ch5GOeJgqVHn+/rWlwJscwn74hV66tpVl75nuawbgfDkEfrZso/0X8MRgISq
         wYXVxgoBwZR8DKvJH2bUFdwXClrgyRG+tA+g17B7k18tsKGDmQ57gU837uqX2FDQ6Uj9
         NIoYkK5/jo3V72tuv43O1y/+1NyxCo4rMsqd3ZUA/w6+UyfKtmWrbHXTCEUPgxxNJT3J
         oVqY2ycooTcn/xvfwshJOuBGuvxbn6ghEFM/KDYGzvbzyX49yQaeAbZibJxf8zs0Skxo
         8t84VCpubej5Q5PreLF61FoO4KEaRSM2gr77MH+6XaqTzFG7qUC3BHtAOzi+bLwCqbkS
         bOdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWRJDdX96reu+SV6BwxDD6lSWgIM0deXib3X4rXTkrp2GkeXrL6
	VMY85n3znNlAJjR0X6x2rSc=
X-Google-Smtp-Source: APXvYqymGyfl3jF6xn7iGN4IFNFvFqCOZAis9pnCsCAr/uHGivzM/lNtmjGOrcPQYxv6KzkuTdGasg==
X-Received: by 2002:a9d:7842:: with SMTP id c2mr6953672otm.252.1581814246455;
        Sat, 15 Feb 2020 16:50:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7281:: with SMTP id t1ls297234otj.7.gmail; Sat, 15 Feb
 2020 16:50:46 -0800 (PST)
X-Received: by 2002:a05:6830:10d5:: with SMTP id z21mr7774160oto.30.1581814246155;
        Sat, 15 Feb 2020 16:50:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581814246; cv=none;
        d=google.com; s=arc-20160816;
        b=lgQ9PwtXxU6+ZmKnqlaUAZ9P0cHRJc2XcsYESwjHD/q7ySqH1g75WzwrPDJwwk7TkA
         jGya1He+EejrM2ehKLw02lHuEghCzgEoMI73YdPYtU7NL4e25c772ofkPEsBQsUE/xKC
         WGwtoVMVIWmIxKJFrYLSOOAu695NPiNZcJp09dlLfZsmtpdL6+OqiZXViEWADW5kdyxZ
         Aa5C9bS0Hd4rCLOkp2IGkYn2EAUUUq1a0GucRxuuIyCPtvAntwbu5wsrG5KKB/S/N1JJ
         P6ZiOnjl0cF3rHNxli06Wp6mql+g7rdAZ5HKMYoWTF/PAbCp0+buRG8rid6SgaeJW5Ld
         4DGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0KP8EkLKjomfDLZE0Whsin5rbCzfp/dYik4ATJNiN5A=;
        b=ebNqm1165F2mpiXKpxUnIKZpM5HeaLTVCR8q1EH4+FrcIrCRymNrgo24FpOkKv63/3
         gHZ9K92h7XlhC8byz9lDhaCPiXTZ0YOA/jbh4LDuwOnHrTcJe4nlB/hhM1jUEJEDU4gk
         T4IIS14C0o1OW4yCuj6hDah2c/TSRujl91LlIMlJM1ZOcRZZgZPFuH3YuVzGHWOPGnXw
         /335FK5ewFgSP6x4kygTw2KSiwQgtXRUfviiblTCCgSY6uC1FQ60933RXUMhQaEtjTTy
         ZpLKCWQXRrjebkTjUOBZk7ZUNXboTzj3trvUcQ4vvG/5bHlc2sDpF6NA93+Y4ILBRjkZ
         y0rA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rBOG1Nlo;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id a17si430443otr.1.2020.02.15.16.50.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Feb 2020 16:50:46 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id q84so13377919oic.4
        for <clang-built-linux@googlegroups.com>; Sat, 15 Feb 2020 16:50:46 -0800 (PST)
X-Received: by 2002:a54:468a:: with SMTP id k10mr6393038oic.3.1581814245822;
        Sat, 15 Feb 2020 16:50:45 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id w202sm3487323oiw.0.2020.02.15.16.50.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 15 Feb 2020 16:50:45 -0800 (PST)
Date: Sat, 15 Feb 2020 17:50:43 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [bluetooth-next:master 13/14] net//bluetooth/smp.c:2185:8:
 warning: variable 'passkey' is uninitialized when used here
Message-ID: <20200216005043.GA25434@ubuntu-m2-xlarge-x86>
References: <202002151854.Xvkpn88l%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202002151854.Xvkpn88l%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rBOG1Nlo;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Feb 15, 2020 at 06:35:56PM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> CC: linux-bluetooth@vger.kernel.org
> TO: Howard Chung <howardchung@google.com>
> CC: Marcel Holtmann <marcel@holtmann.org>
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/bluetooth/bluetooth-next.git master
> head:   eab2404ba798a8efda2a970f44071c3406d94e57
> commit: cee5f20fece32cd1722230cb05333f39db860698 [13/14] Bluetooth: secure bluetooth stack from bluedump attack
> config: arm64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project f7e2227832a6691bf2d07cebf4bd772d5eafbe1a)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout cee5f20fece32cd1722230cb05333f39db860698
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> net//bluetooth/smp.c:2185:8: warning: variable 'passkey' is uninitialized when used here [-Wuninitialized]
>                                                            passkey, 1);
>                                                            ^~~~~~~
>    net//bluetooth/smp.c:2119:13: note: initialize the variable 'passkey' to silence this warning
>            u32 passkey;
>                       ^
>                        = 0
>    1 warning generated.
> 
> vim +/passkey +2185 net//bluetooth/smp.c
> 
>   2112	
>   2113	static u8 smp_cmd_pairing_random(struct l2cap_conn *conn, struct sk_buff *skb)
>   2114	{
>   2115		struct l2cap_chan *chan = conn->smp;
>   2116		struct smp_chan *smp = chan->data;
>   2117		struct hci_conn *hcon = conn->hcon;
>   2118		u8 *pkax, *pkbx, *na, *nb;
>   2119		u32 passkey;
>   2120		int err;
>   2121	
>   2122		BT_DBG("conn %p", conn);
>   2123	
>   2124		if (skb->len < sizeof(smp->rrnd))
>   2125			return SMP_INVALID_PARAMS;
>   2126	
>   2127		memcpy(smp->rrnd, skb->data, sizeof(smp->rrnd));
>   2128		skb_pull(skb, sizeof(smp->rrnd));
>   2129	
>   2130		if (!test_bit(SMP_FLAG_SC, &smp->flags))
>   2131			return smp_random(smp);
>   2132	
>   2133		if (hcon->out) {
>   2134			pkax = smp->local_pk;
>   2135			pkbx = smp->remote_pk;
>   2136			na   = smp->prnd;
>   2137			nb   = smp->rrnd;
>   2138		} else {
>   2139			pkax = smp->remote_pk;
>   2140			pkbx = smp->local_pk;
>   2141			na   = smp->rrnd;
>   2142			nb   = smp->prnd;
>   2143		}
>   2144	
>   2145		if (smp->method == REQ_OOB) {
>   2146			if (!hcon->out)
>   2147				smp_send_cmd(conn, SMP_CMD_PAIRING_RANDOM,
>   2148					     sizeof(smp->prnd), smp->prnd);
>   2149			SMP_ALLOW_CMD(smp, SMP_CMD_DHKEY_CHECK);
>   2150			goto mackey_and_ltk;
>   2151		}
>   2152	
>   2153		/* Passkey entry has special treatment */
>   2154		if (smp->method == REQ_PASSKEY || smp->method == DSP_PASSKEY)
>   2155			return sc_passkey_round(smp, SMP_CMD_PAIRING_RANDOM);
>   2156	
>   2157		if (hcon->out) {
>   2158			u8 cfm[16];
>   2159	
>   2160			err = smp_f4(smp->tfm_cmac, smp->remote_pk, smp->local_pk,
>   2161				     smp->rrnd, 0, cfm);
>   2162			if (err)
>   2163				return SMP_UNSPECIFIED;
>   2164	
>   2165			if (crypto_memneq(smp->pcnf, cfm, 16))
>   2166				return SMP_CONFIRM_FAILED;
>   2167		} else {
>   2168			smp_send_cmd(conn, SMP_CMD_PAIRING_RANDOM, sizeof(smp->prnd),
>   2169				     smp->prnd);
>   2170			SMP_ALLOW_CMD(smp, SMP_CMD_DHKEY_CHECK);
>   2171	
>   2172			/* Only Just-Works pairing requires extra checks */
>   2173			if (smp->method != JUST_WORKS)
>   2174				goto mackey_and_ltk;
>   2175	
>   2176			/* If there already exists long term key in local host, leave
>   2177			 * the decision to user space since the remote device could
>   2178			 * be legitimate or malicious.
>   2179			 */
>   2180			if (hci_find_ltk(hcon->hdev, &hcon->dst, hcon->dst_type,
>   2181					 hcon->role)) {
>   2182				err = mgmt_user_confirm_request(hcon->hdev, &hcon->dst,
>   2183								hcon->type,
>   2184								hcon->dst_type,
> > 2185								passkey, 1);
>   2186				if (err)
>   2187					return SMP_UNSPECIFIED;
>   2188				set_bit(SMP_FLAG_WAIT_USER, &smp->flags);
>   2189			}
>   2190		}
>   2191	
>   2192	mackey_and_ltk:
>   2193		/* Generate MacKey and LTK */
>   2194		err = sc_mackey_and_ltk(smp, smp->mackey, smp->tk);
>   2195		if (err)
>   2196			return SMP_UNSPECIFIED;
>   2197	
>   2198		if (smp->method == JUST_WORKS || smp->method == REQ_OOB) {
>   2199			if (hcon->out) {
>   2200				sc_dhkey_check(smp);
>   2201				SMP_ALLOW_CMD(smp, SMP_CMD_DHKEY_CHECK);
>   2202			}
>   2203			return 0;
>   2204		}
>   2205	
>   2206		err = smp_g2(smp->tfm_cmac, pkax, pkbx, na, nb, &passkey);
>   2207		if (err)
>   2208			return SMP_UNSPECIFIED;
>   2209	
>   2210		err = mgmt_user_confirm_request(hcon->hdev, &hcon->dst, hcon->type,
>   2211						hcon->dst_type, passkey, 0);
>   2212		if (err)
>   2213			return SMP_UNSPECIFIED;
>   2214	
>   2215		set_bit(SMP_FLAG_WAIT_USER, &smp->flags);
>   2216	
>   2217		return 0;
>   2218	}
>   2219	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Posted to LKML:

https://lore.kernel.org/linux-bluetooth/20200216005010.GA24335@ubuntu-m2-xlarge-x86/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200216005043.GA25434%40ubuntu-m2-xlarge-x86.
