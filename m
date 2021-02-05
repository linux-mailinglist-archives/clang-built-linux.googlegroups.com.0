Return-Path: <clang-built-linux+bncBCOP5SPV4UCBBT7O6KAAMGQEJ6F37RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2CF310322
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 04:11:11 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id c1sf4469931ljj.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 19:11:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612494671; cv=pass;
        d=google.com; s=arc-20160816;
        b=aXjaMczbfY1XoRKRxGJ8QQ5nDOAaxNYFNVrFvkL3PlbrAJMOEayisTr7VN1L7FSUVp
         EOXw5iBk5ep5l/1RN2TAmgTZcJT2nuR/nyB7wJJT/Uczg5KwHyE6ptzA9Wd4h2/Wq07a
         yLRbfTCTU2AD/5qnpVA3veP4CK/U/EGGTNjvqGlRzRKoQpnkpw9IN4diZ++quDvOaV1P
         +KjRuH2XHcqQpUlvyg+X9kX2kTVpd/n7abKoigar5g+XjMQSLrVyYAP8ipF/SuXyE1bl
         fe2T0/mO7yhbf2qiniR2/Lixhc99mxnxdpfZY4ULz7Z3QY0fK9JOHiEo6sppyKoZ25oj
         CajA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=BEl35Ej1NoAJNCsfQDfeGGyk3VWEs84nYkp2ld0ftCA=;
        b=UZta3FEAhfWUXim7nnkNeQAFvd/0WuMZY9F/jioKp4zx2mEcuaIFAmgQARwZ3IWrk7
         tPWCeyXOnU3XNlvq0kDeMea0rYILUebvld5P1YnA0ti6fEygh2zfpbViUpkmQ55cll80
         gH05ZW7Uir35LSgXDpdwcsd0zNHLG0lzU0owSrpvAhY/Nm3h2bP8nQ7+tcfJQzM2DTfe
         06XdnnRPxYOgY+hMxb0wegvuvZDlDPT7A0Bjb3SC92HH5HCp8Hn3h2LJwg3iHuscTXEA
         VqRCJS1gUl06mX7VS3PWLVJ3ogK2NwNfOJ7PwoRM8mX0+igFm5SxVTO0BglE17FEwx02
         wgbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@colorremedies-com.20150623.gappssmtp.com header.s=20150623 header.b="ald/6GB4";
       spf=pass (google.com: domain of chris@colorremedies.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=chris@colorremedies.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BEl35Ej1NoAJNCsfQDfeGGyk3VWEs84nYkp2ld0ftCA=;
        b=ClPI/++fu5/t5T42lHROkNuED1OHSO3WsMeg6JdwbV2MztN1JZMXe7mohPmFVRlsHS
         1Nufpfj8z+/TTmWkYMpGL8dJKEg+g3x3FMlX2RDcE/nA54v3x48EXf3n4rbupcVZi9QR
         BuYOWp4argyPV21tiFWQRaOpV4I1xUhHpYFBMnJBdK6SA/ZqW5NepDfftQxYo+oDaA80
         mQhifW0z/zo15V+WmusnHuDkAFCPcxVrBSh1TPxIRO3ohuzMFDGq/YGwa0xmHTbDPbX9
         zeMNq2B0unllGQ+7pEZXQMiQl4h+wTtBAl5+6Cp/er4i9UHImlHfmSyVeFK90ky4xHJg
         3b8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BEl35Ej1NoAJNCsfQDfeGGyk3VWEs84nYkp2ld0ftCA=;
        b=Cc0Bn7GtJG3CDvyKkr4y5oW9r/HiKkgEsi3XmQUv76AN58/gqaSCzFrGbY8oLRN1Yu
         JmnSY0+ZOMcpdxh9TfsQhmo5r01kiAeQXUtFdMtCfkeDgjTBYjDmQeRHGfj94OgCmhkP
         9TkfRBjqqI7dS8lfq+h55BZsbOAVedWPsU8EgWHEfMxeFWfNkLncIU8zuICjolA2u0j7
         YT0ZAbtMr90wsea463hN3H/BJsefN+kgpSTjluD7H8ZJSSViFT/F7QH2lEdZvdJHVRWf
         W2ryspYQ08XzmmwvtV23IpdnMm8A735xYWcLEvZot9/BeGM2j45dZEodbDPHSrsnaHsD
         2MIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531FlTJCRB3HjAli/T+Z7hz8cCad2BJ/kvhUJSvNVZ1kH9tNQlzY
	81DPlGynLruYJe3TXQsSYz8=
X-Google-Smtp-Source: ABdhPJzod1+9aJfojHv4KwNXq7iz9NzVRqKqTZbb+w01bocZc5+fU5kCAo5AgecZnJYnXaV1jpJf0A==
X-Received: by 2002:a05:6512:39c3:: with SMTP id k3mr1300263lfu.501.1612494671409;
        Thu, 04 Feb 2021 19:11:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6d4:: with SMTP id u20ls1364647lff.1.gmail; Thu, 04
 Feb 2021 19:11:10 -0800 (PST)
X-Received: by 2002:a19:c70c:: with SMTP id x12mr1363605lff.222.1612494670090;
        Thu, 04 Feb 2021 19:11:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612494670; cv=none;
        d=google.com; s=arc-20160816;
        b=Bc0ZgMuicfPiE4JECkBPMHgQFhVh9SANT5FaIdtBXwApYgePipVS4QQovV80nrnbsv
         DH6VZE98k1j7OQc4DEwj2XJqr+r3UoFMcfXBxGJl1ZLSPNKBSd1yd+3Zn+J9U+V3qROv
         m7nW13SsPFw0M2Khb9ncFBWeckxuxJdbMbW9/NgI3QL+Iq3wCiLzLc87yXOTV/i+aoaE
         59GlcMLuBnkiW+OazMZKvKRjV36MopWsBndGN6W46IiLEJcBASVM2uHWYBnOBU3+/b63
         xD8Z+pm49/aTjQigXzAPL9vSGM8hwUWB7oO5cXaUZTY8oEtIafCvkQ0R0Bc7yu8hJKG9
         XF7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=I+kAjuceqQaSn6CnDxq1eGCe6jIuci9QzOZjaAOHZZ4=;
        b=b2HzGEiDc4+Rek9TgEGUGkbtReRiaioqat0/QT7rJ2w6+eLAu6VwGJXVzpWNG56s2+
         AQCj2jyAlK3zI9JNxcktbbFwR+t30xBGVWQXI1OIaqJrcZAXTKh+3N9xHu6r/1CvP0rE
         Xz0PgxYIz+f2m95TczT0Viv6Hp/6fqBKHkuWXIssOkBwCPJV8s2XJpdJrIqtRlTPYEOn
         tKmLuZCzw3iAYL0dZGIpehv6j6AbgGCjZe92evGk+BtqrBCqO3Eo6C3o+jpRJ2p8H5AS
         uQEGz76h4Kb7d1I7/NugLSral4cwiXVt4TcDYpv5mbzdmbE8n9M7ObbFtE1DAv2/K00C
         pBuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@colorremedies-com.20150623.gappssmtp.com header.s=20150623 header.b="ald/6GB4";
       spf=pass (google.com: domain of chris@colorremedies.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=chris@colorremedies.com
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id t21si247716lfe.3.2021.02.04.19.11.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 19:11:09 -0800 (PST)
Received-SPF: pass (google.com: domain of chris@colorremedies.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Received: by mail-wr1-x434.google.com with SMTP id c4so5943943wru.9
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 19:11:09 -0800 (PST)
X-Received: by 2002:a5d:6686:: with SMTP id l6mr2478909wru.236.1612494669505;
 Thu, 04 Feb 2021 19:11:09 -0800 (PST)
MIME-Version: 1.0
References: <CAJCQCtSQLc0VHqO4BY_-YB2OmCNNmHCS6fNdQKmMWGn2v=Jpdw@mail.gmail.com>
 <CAJCQCtRHOidM7Vps1JQSpZA14u+B5fR860FwZB=eb1wYjTpqDw@mail.gmail.com>
 <CAEf4BzZ4oTB0-JizHe1VaCk2V+Jb9jJoTznkgh6CjE5VxNVqbg@mail.gmail.com>
 <CAJCQCtRw6UWGGvjn0x__godYKYQXXmtyQys4efW2Pb84Q5q8Eg@mail.gmail.com>
 <20210204010038.GA854763@kernel.org> <CAJCQCtQfgRp78_WSrSHLNUUYNCyOCH=vo10nVZW_cyMjpZiNJg@mail.gmail.com>
 <CAEf4Bza4XQxpS7VTNWGk6Rz-iUwZemF6+iAVBA_yvrWnV0k8Qg@mail.gmail.com>
 <CAJCQCtRDJ_uiJcanP_p+y6Kz76c4P-EmndMyfHN5f4rtkgYhjA@mail.gmail.com>
 <20210204132625.GB910119@kernel.org> <20210204163319.GD910119@kernel.org>
In-Reply-To: <20210204163319.GD910119@kernel.org>
From: Chris Murphy <lists@colorremedies.com>
Date: Thu, 4 Feb 2021 20:10:52 -0700
Message-ID: <CAJCQCtT-i0Lv2zxUDko3XuiHpUqOnYPeND5LzD=zgrB1-GNvAg@mail.gmail.com>
Subject: Re: [FIXED] Re: 5:11: in-kernel BTF is malformed
To: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Chris Murphy <lists@colorremedies.com>, bpf <bpf@vger.kernel.org>, 
	Jiri Olsa <jolsa@kernel.org>, dwarves@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andrii@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lists@colorremedies.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@colorremedies-com.20150623.gappssmtp.com header.s=20150623
 header.b="ald/6GB4";       spf=pass (google.com: domain of
 chris@colorremedies.com designates 2a00:1450:4864:20::434 as permitted
 sender) smtp.mailfrom=chris@colorremedies.com
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

On Thu, Feb 4, 2021 at 9:33 AM Arnaldo Carvalho de Melo <acme@kernel.org> wrote:
>
> So I think that for the problems related to building the kernel with gcc
> 11 in Fedora Rawhide using the default that is now DWARF5, pahole 1.20
> is good to go and I'll tag it now.

dwarves-1.20-1.fc34.x86_64
libdwarves1-1.20-1.fc34.x86_64

Fixes both "failed to validate module [?????] BTF: -22" type errors,
and 'in-kernel BTF is malformed" with qemu-kvm and libvirt.

Is that expected? Or maybe the second issue was fixed by
gcc-11.0.0-0.18.fc34.x86_64 [(GCC) 11.0.0 20210130]? This is what I
get for changing more than one thing at once.

--
Chris Murphy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJCQCtT-i0Lv2zxUDko3XuiHpUqOnYPeND5LzD%3DzgrB1-GNvAg%40mail.gmail.com.
