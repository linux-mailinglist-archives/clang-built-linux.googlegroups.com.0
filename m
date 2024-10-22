Return-Path: <clang-built-linux+bncBD5LDHXSYUMRBZ6U3W4AMGQE5TNIYLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 5246B9A9DCA
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2024 11:03:42 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id 38308e7fff4ca-2fb55e102b6sf39514961fa.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2024 02:03:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1729587817; cv=pass;
        d=google.com; s=arc-20240605;
        b=ab54sx6dUR0vuizUTQ+4GnaskqO8Y4RWy1V7PQySWXF7fRuH3lPeJ7HMtx8JIlQ1oA
         547eb+AWlU8k6aR4OkqTezgFC5EMfREBsWkzBqRlOm2fo3KZBZpE5+x6NlhsuKVHFAQI
         iNw5CcAf6JRgf/xHPRG0WtBujL8e6KGSlSsrddZUt68/gP2wYt3dGw6SN3mcdJBnZcPU
         iLN3DtjLxmhU5PO9bxRt9MnnYGPTgtcrI9D1UU4GaG4ntanISTyUR5W0q1Oo8t7ig+vp
         K2rXwAShxjxqOktTumjNPAAo6H20HogU0faUbXxJnnnkzfNhO4bCeWIV85LACnQzze4Y
         PvwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4PGRpj349dtZRcbwihqplwlxcbt8hvH5wYD/0h4T4QE=;
        fh=ejMhGMj4jlRwj2b9YJI2gzEfzIcwjz/eATC2XVpqv4U=;
        b=M9ryxOToK+XzzN3tKyFvAFMTKcut4F7HoOFBDPhSamSYusgcLC4FvbvfI902g3OMgN
         pqOIcM5ueOQ8Gfi/mBVUxXOtqvhB7U60Ofrndlx4rhA9Ajp4Z9Wrl0G5i6BCFuRE07Wq
         ACoGFgy2D1ZBJc7xj+uXVnUIvTklbpuXTE+FwJ4LQCJ8azaLJ0Yx/+koGP0+J0JWCWkM
         TFmdwWPJGwi/t7kcVKRhCcq2tbriNtkWHuZzrY1GK9cg0wmznrOwQYXT1JKAF1nrBB8M
         br/7IuVYSYN5FAUIeNKXUjOe/YoOSZefDnHAWSuK4k54QF1v9DKyJvf22BIRVNCu841M
         g0PA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=iUTyeyi3;
       dkim=neutral (no key) header.i=@suse.cz header.s=susede2_ed25519;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=kNwMrspN;
       dkim=neutral (no key) header.i=@suse.cz header.s=susede2_ed25519;
       spf=pass (google.com: domain of jack@suse.cz designates 195.135.223.130 as permitted sender) smtp.mailfrom=jack@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1729587817; x=1730192617; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4PGRpj349dtZRcbwihqplwlxcbt8hvH5wYD/0h4T4QE=;
        b=RMXQpniUYHveHpJgkuFl4QKqI0tk6MolmDXEDPB31fjvBO6+aErtdhZyHUTL84PU+x
         XFbIVykAbODK9rEY/A4+Qx19WpIaiv81bsp1TlQismXmaiWm3wEMuvP3YOKX0NbaVG8r
         LF76znnIUdH6xAX09JU1roCi7mFXk1Yts+HFZhrI0HP47xEVnylHJjLKC5I6oGyN7IoX
         gsOZugNmi5W8tHcPyEnDt1AL1+vUQRSU7LyoiMUa3t1apwPyIdQpvI+IZVztd2pDxD94
         l162jmsnBz1ZHgb/uguk7Xb03T/LNJUYC/Bijj8WUe64QwS5C2UJpA/jD4z4WaE00Ga/
         n2Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729587817; x=1730192617;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4PGRpj349dtZRcbwihqplwlxcbt8hvH5wYD/0h4T4QE=;
        b=I3qUPPYv6y0O0hwfQTbEVe/KWbHaqLv0AI5GkMl7tLQsHLF4bBsdZhdTYMm5ifpvui
         MGsPTgnwClwQPhCnF4qPzd4pxLm39YRsEVo78hJMIoL7oL2Bvz+wQUpbRYD6PRRFIG6/
         KZ1v1g2lCQwsuXJMkXt8pw1w3rHb0LglPeQZoyShM4/LlMqTl3XKKx9M6hc7XxZvomFX
         cio4IsMa2VvhB5+WVv8JDR7t2sYV7NJ7CTi4zV+JLz+XE1QZ8zKAf2/ScVZR6wBZ3xML
         P6wsi9XqvSE/Fxqhmn+DLhdOTe/bJba7ylbtVDUSxE2foWXgHH5eHk+fjv/kSuhpTbtO
         js1g==
Sender: clang-built-linux@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXv3W7qDeWkhaC+d4kLwmtr2WNZaLNnsTKUOoRxF4NBCenx3AC9RYHPBt5lxzTYEGJ2XXgeFQ==@lfdr.de
X-Gm-Message-State: AOJu0Yw1WKh9+Dl/7yVhFE9nba8KB/K9OREPBUmHU/OnDSjauzMlAiJh
	RHqVjwzEsasPSUJjAjMb4JCc6nSNAcygUo86pvkJcW7j2Bb1V17p
X-Google-Smtp-Source: AGHT+IHTsa1HITvyhFM+F7PTLZWKNe30+nJtZrfzrjJchN7DcGyh0arMrAhiw9ThsWEStN0L9NkS+w==
X-Received: by 2002:a2e:920d:0:b0:2fb:3bef:6233 with SMTP id 38308e7fff4ca-2fb831e739fmr57343561fa.33.1729587816224;
        Tue, 22 Oct 2024 02:03:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:1f11:0:b0:2fb:5214:5c92 with SMTP id 38308e7fff4ca-2fb6d6fb0b5ls12872281fa.1.-pod-prod-06-eu;
 Tue, 22 Oct 2024 02:03:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUZPJg2UqkkEllu8HtaSZGaHNCKQxxoJAMxqr2wkSfYf2FQ6d6H1b0FfTha71T28wqvnF757WZKFh5LibAzNpshYw==@googlegroups.com
X-Received: by 2002:a2e:be9f:0:b0:2ef:243b:6dce with SMTP id 38308e7fff4ca-2fb82e9f13emr58752651fa.10.1729587812789;
        Tue, 22 Oct 2024 02:03:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1729587812; cv=none;
        d=google.com; s=arc-20240605;
        b=WQUYbQpunoU+toJ0062N+l+N5SDLHed8ltRfMUIeCNhF9hw9zRxzfOmg1xuyQD25Mw
         9Z7intVlzL2A8KeumXPwqdJDLIecj+aNnCFyFl+e+y6YMXF+yatOliqcWku/dwHNksBA
         3kbbrdggOQFa84d5ZNA8dfHl+dMh2GiQhf5X70ego+y/UgIXmCiMr6M52Jdqbvr0Gclj
         0eoCBmEiVfLom/gfwA7gTTsxPtSjePgE9K0oKo4fYab2uZnCXuQBX9UcasRFt3njtZfc
         z74vSxGl+/uuAL3pduLHxQbLu6kKFCSxb4sh8NhqfBNGeQQATMzMj3M/0LcYL0XKn7ic
         /hTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature
         :dkim-signature:dkim-signature;
        bh=Ge4czd1YagvBRBTmt8lWVR11qX/pmlisX8kozJtR0aI=;
        fh=l8cWAGVYtRHkuxUFcz4bizKTy00TH+zrqO8O4yuDJfM=;
        b=hwWEzmBx30qaovEz/C/FHKEAjfjfZDtaGitm0OuHma5kwyw+0Tdet7FHB1Kcg7nf29
         nr1Wi8d+nDpIBkk+CXoX6w9I/7MpmcLGpXlxmn+dswB1LhzExg7pEGy8bY+e08PLWRXj
         bgYWmoGTdnoFjsnfUj7Oi2nNyi5wjeYobNmOFnfn3bhzYwcHAcOt79uEX5+AT+oxwvJc
         DqQVFfAP0g9d7QjlnNQmwvw18J6NRiPU1YwLRNRntb1lKTglGC0fvImNPn9QWyW12D+S
         PV9JVmpN4is7xTaoPtKf0+t+jbDMplFuMRfsKE4QDH+UAi8Y07aPUtQAhIlzteNXezDB
         b05A==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=iUTyeyi3;
       dkim=neutral (no key) header.i=@suse.cz header.s=susede2_ed25519;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=kNwMrspN;
       dkim=neutral (no key) header.i=@suse.cz header.s=susede2_ed25519;
       spf=pass (google.com: domain of jack@suse.cz designates 195.135.223.130 as permitted sender) smtp.mailfrom=jack@suse.cz
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.223.130])
        by gmr-mx.google.com with ESMTPS id 38308e7fff4ca-2fb9ae3d7bbsi1086131fa.6.2024.10.22.02.03.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 02:03:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of jack@suse.cz designates 195.135.223.130 as permitted sender) client-ip=195.135.223.130;
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id D2C7B21EA9;
	Tue, 22 Oct 2024 09:03:31 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id C5E6513AC9;
	Tue, 22 Oct 2024 09:03:31 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id 1lhLMGNqF2fDBwAAD6G6ig
	(envelope-from <jack@suse.cz>); Tue, 22 Oct 2024 09:03:31 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
	id 8C6D7A086F; Tue, 22 Oct 2024 11:03:27 +0200 (CEST)
Date: Tue, 22 Oct 2024 11:03:27 +0200
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+0dd5b81275fa083055d7@syzkaller.appspotmail.com>
Cc: adilger.kernel@dilger.ca, brauner@kernel.org,
	clang-built-linux@googlegroups.com, harshadshirwadkar@gmail.com,
	jack@suse.cz, linux-ext4@vger.kernel.org,
	linux-kernel@vger.kernel.org, nathan@kernel.org,
	ndesaulniers@google.com, syzkaller-bugs@googlegroups.com,
	tytso@mit.edu
Subject: Re: [syzbot] [ext4?] INFO: task hung in ext4_stop_mmpd
Message-ID: <20241022090327.qhemczcaheaympct@quack3>
References: <000000000000690606061ce1fe7e@google.com>
 <6716e5a0.050a0220.10f4f4.00d2.GAE@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6716e5a0.050a0220.10f4f4.00d2.GAE@google.com>
X-Rspamd-Queue-Id: D2C7B21EA9
X-Spam-Level: 
X-Spamd-Result: default: False [-1.51 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=dd14c10ec1b6af25];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[dilger.ca,kernel.org,googlegroups.com,gmail.com,suse.cz,vger.kernel.org,google.com,mit.edu];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email,imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns,suse.cz:dkim,suse.cz:email];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[0dd5b81275fa083055d7];
	ASN(0.00)[asn:25478, ipnet:::/0, country:RU];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[suse.cz:+];
	MISSING_XM_UA(0.00)[];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-Spam-Score: -1.51
X-Spam-Flag: NO
X-Original-Sender: jack@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.cz header.s=susede2_rsa header.b=iUTyeyi3;       dkim=neutral
 (no key) header.i=@suse.cz header.s=susede2_ed25519;       dkim=pass
 header.i=@suse.cz header.s=susede2_rsa header.b=kNwMrspN;       dkim=neutral
 (no key) header.i=@suse.cz header.s=susede2_ed25519;       spf=pass
 (google.com: domain of jack@suse.cz designates 195.135.223.130 as permitted
 sender) smtp.mailfrom=jack@suse.cz
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

On Mon 21-10-24 16:37:04, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit d3476f3dad4ad68ae5f6b008ea6591d1520da5d8
> Author: Jan Kara <jack@suse.cz>
> Date:   Mon Aug 5 20:12:41 2024 +0000
> 
>     ext4: don't set SB_RDONLY after filesystem errors
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=10d04640580000
> start commit:   4a39ac5b7d62 Merge tag 'random-6.12-rc1-for-linus' of git:..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=dd14c10ec1b6af25
> dashboard link: https://syzkaller.appspot.com/bug?extid=0dd5b81275fa083055d7
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14fbd177980000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=108ea607980000
> 
> If the result looks correct, please mark the issue as fixed by replying with:

Looks plausible:

#syz fix: ext4: don't set SB_RDONLY after filesystem errors

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20241022090327.qhemczcaheaympct%40quack3.
