Return-Path: <clang-built-linux+bncBDRLVLXLTULBBHUPS74AKGQER37ITIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 273762188C7
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jul 2020 15:18:23 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id g187sf2978998wme.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Jul 2020 06:18:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594214303; cv=pass;
        d=google.com; s=arc-20160816;
        b=ru5NNrNOAWdbzw3vi+OfimPuSqdEacqEt6UvffXvZFU5zjiOScoqvZlRTa2zZPk8qk
         VsVYLtbf+8sIPlAvP2GGbttkPzCUuOQn/Kzjd4R9f2qiyL4Pf/eplQY7a2Lf4o/jBzjz
         CVc5AJOVCoqEzpRE5J6Cs7bAhxe+uDftkymLtfJocSVaWXeNt69iAxyox1a8FSOhWq2P
         q8JFt+TZP5czWVuqwpO/1q3LTSLJIIYYC/mLCBVjpSlTRLiFKftDSkYF2j8MNquH9vgC
         1gikAIknqTFlV6zKr1Qkp7o+Au4sdmDs+flDp6Y0H6grS+QXFucerhVXojM1ckmPUj8k
         8HNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=Uz8beRzwm9OuUHhhz8y9ToMlx9YrGPMp00AYGskRJxM=;
        b=Qup9Uh2aYtRfIpt7tqYEu0GdWno47NYVW8b4m3dHtEjCp7RIesy7xLkS0iyxat+jNK
         zDQjW1BXRb5M6rJ3wafjV9pDHvHKZD2K91mniysiY9aQH+i0TzO71KhMys33hny5zZen
         CrUf7hLhw4VpI1vH7dmG1htRJDW2TlSCPiKTPEXQ9FcoIYWB9vbVtc+6NcK1azMN/PcM
         +ZNvCjppKsFOSFhl6rDoXo/vzhYDRxvz12UekAhSRKwLplxUZbolLRxuOuuUxv6w44Zi
         DpF+DWscMphncCfrM9+B/mHmTSgBE54fz7H6GWXrYRz+QBmBNXuYal/W+QGnvgES7f+v
         QU2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=34KLThHp;
       dkim=neutral (no key) header.i=@linutronix.de header.b=SySxJPDK;
       spf=pass (google.com: domain of john.ogness@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=john.ogness@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uz8beRzwm9OuUHhhz8y9ToMlx9YrGPMp00AYGskRJxM=;
        b=TpjoS3LrQAm2H4FNr7l4TFVGjxR18jnhaSydJ8ipLoQdWDhs/mH2JyrG6QKI+Vzc4x
         0hN6YNBER54D00C7Vh/29efVZHDfHmsts1Jq9Bfnm4VwvpGuoItBKqBR0Ifq2N4zA7zS
         4gbrfWhGO5C9RJpDlTqq3xwF4ABcycJ0/PKqOsYm5nIGHVwy92F2Vfn7maLNfxOODvTM
         wBT0VzuK9KAZGVmo5lWr5x/3e1oiQMqNJEDColhhSV2TWGNUz1LPmSNho9c0vL2EhHb7
         SrloUBoWDghVWR2uNVsSxjJXuKhmtS1NYYodPT06lSU+d48ZNx5l881k07Xx9JBO3Ks6
         WfRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uz8beRzwm9OuUHhhz8y9ToMlx9YrGPMp00AYGskRJxM=;
        b=QwU00rwV29qKIVh+3ddF4WERSLbtIMy2glDLxyI97lbVzlaAHEj0Kp96b89xNoC+D0
         47yt93VIb/b+BCGWkIYozMzoPbd81NF6riHOkvwi2fKyW3Eml21IWxbpq9pQYvppP6cd
         vzRZWqD7aX0NJQJvyrsSMtoKQ5zb3kRDFIkv80240dJCHyazEJS4tiOYqi1S4Wgk8huI
         xVZ1JbXXNgtYLba3Z9HQ/uuYg+5bTo1UA231GuAuvqIQJA79ECbMmIFXFpdR8CCbdpJa
         SX95TJds48yPVq/piMzU8vKZYjEF21oYxgfFHjDCMKCwYUSkC86BNhSSNHCLCpv3zyir
         4GvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DogCWGqZajX/ho/KRmga7BpZGyOxK6qn4sq80Mut5CCxXYu06
	7ePP64/RVtVIP50y/n8ZcBo=
X-Google-Smtp-Source: ABdhPJweJFRB2ABkurGfsgy8jrCGIDIp7QOWUkRwUqf4djMCUVs0Zz2Ox1g6KcCQZ82/iMkOVtqEgw==
X-Received: by 2002:a5d:634e:: with SMTP id b14mr62526161wrw.423.1594214302845;
        Wed, 08 Jul 2020 06:18:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2049:: with SMTP id g70ls1151147wmg.0.gmail; Wed, 08 Jul
 2020 06:18:22 -0700 (PDT)
X-Received: by 2002:a1c:5646:: with SMTP id k67mr9695405wmb.61.1594214302273;
        Wed, 08 Jul 2020 06:18:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594214302; cv=none;
        d=google.com; s=arc-20160816;
        b=kXTOWd/qJ6eAdGglCDlLS9vP50YnF80WhMx8mBZDYaB94aVlgMwdnlODtUKdyPBsae
         WupeTW97J+jbhTmSjPZe1+sIhBF4F7UR1VTGwWU5YgLmjIJVxUjFC2RDQzGjgnxNQ7fP
         RjNNn6JrV1JFPjUc2s1j/nZ5lbBg3N7mDbf3kcSVv8q13EwIJFKtGSiDmDMF1hvaKVSf
         l/rK+VzG9ex/mFwTkyL5lV8NXIPeNTkvvYPJXscYcXLd19s/4Ct33aZ8tNA7B3x5fKjH
         eHF4igrDuKsy4PBRNvXrSXJN+tzZOEmIaVrbu98+6RT34JGzNoEMnvg9Jg9bDYsmTah+
         BThA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=ZUazG+j+kI1930BTbc0/bqv2TsWNNEbE1MGkVz6uV9s=;
        b=wZ6HBP8KakBI1PCsu78QvI69nhYhm+u5CvqahGWm6YsLfO/3NAHMMiXOMf7m5w/G5K
         L1ntF6Qsw+2ogB/0zuOxSl/NKogh7R76NOZEiOLy34xv3Q1RiBtIAq1QvDlEpmExArQX
         XlRcD64MozOskM7M03RYJPi6nBTxQBg9wRxgBYjYoDJSLcOyV/NHJP5yq0PXStwTDg/r
         SKb9KDrYFW/QZ770IQQD+AbKIVjV7Cb26mH3U9rUx6H3ToiHjSZ8WL+ZvbpqFu99EgsU
         nnAfIcQFhOOhSwDfM9K/18AW1YdXZTvPWHaw+noefy9DIm/YtBEy+L+X4w8qY5O6Jvas
         +hzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=34KLThHp;
       dkim=neutral (no key) header.i=@linutronix.de header.b=SySxJPDK;
       spf=pass (google.com: domain of john.ogness@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=john.ogness@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id r8si1362038wrm.0.2020.07.08.06.18.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2020 06:18:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.ogness@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: John Ogness <john.ogness@linutronix.de>
To: kernel test robot <lkp@intel.com>, Petr Mladek <pmladek@suse.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Peter Zijlstra <peterz@infradead.org>,
	Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrea Parri <parri.andrea@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Paul McKenney <paulmck@kernel.org>, kexec@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/4] printk: use the lockless ringbuffer
In-Reply-To: <202007080356.fSb8SLZk%lkp@intel.com>
References: <20200707145932.8752-5-john.ogness@linutronix.de> <202007080356.fSb8SLZk%lkp@intel.com>
Date: Wed, 08 Jul 2020 15:24:20 +0206
Message-ID: <87r1tmcfhf.fsf@jogness.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: john.ogness@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=34KLThHp;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=SySxJPDK;       spf=pass
 (google.com: domain of john.ogness@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=john.ogness@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Fix prepared for for v5.

On 2020-07-08, kernel test robot <lkp@intel.com> wrote:
>>> kernel/printk/printk.c:1146:10: warning: format specifies type 'unsigned long' but the argument has type 'size_t' (aka 'unsigned int') [-Wformat]
>                           new_descs_size);
>                           ^~~~~~~~~~~~~~
>    include/linux/printk.h:338:33: note: expanded from macro 'pr_err'
>            printk(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
>                                   ~~~     ^~~~~~~~~~~
>    1 warning generated.

Reported-by: kernel test robot <lkp@intel.com>

diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
index de8d54be4115..0b1337f4188c 100644
--- a/kernel/printk/printk.c
+++ b/kernel/printk/printk.c
@@ -1142,7 +1142,7 @@ void __init setup_log_buf(int early)
 	new_descs_size = new_descs_count * sizeof(struct prb_desc);
 	new_descs = memblock_alloc(new_descs_size, LOG_ALIGN);
 	if (unlikely(!new_descs)) {
-		pr_err("log_buf_len: %lu desc bytes not available\n",
+		pr_err("log_buf_len: %zu desc bytes not available\n",
 		       new_descs_size);
 		memblock_free(__pa(new_dict_buf), new_log_buf_len);
 		memblock_free(__pa(new_log_buf), new_log_buf_len);

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87r1tmcfhf.fsf%40jogness.linutronix.de.
