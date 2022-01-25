Return-Path: <clang-built-linux+bncBCQ2TPMHZMNRBXMZX2HQMGQEDTBCDTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 151E149ABCE
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Jan 2022 06:38:39 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id w25-20020a9d70d9000000b0059fa6c78406sf2562674otj.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Jan 2022 21:38:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ayloRglD0eS10z3UsmXTGwzrr5IgwZw1cPwUAqyqMGQ=;
        b=EQowTFtbLQyqccuaEaPacrSpSb/vDYW7WD3afiEO1FAmI2hGKz2Z3p88bLDwxPo8xu
         1U9Ddp/hgO5eY/tM3dvgrVr+Ynurr+ivVV5oPU/nQ2oqRUbbLm2dpcykI2BRFcvdwByt
         Q3pj/Fo2TlrFyN7izhDQrnKpaCbQwSV1mNb8026222FZvyPHxQcbpLghxNCl0B6Yukd6
         VbB8rnCp0EPEMGg8DZ6wbynLeciRptCHs4ydZq7zabpnFl5ppEAoH5C7Uxbz92xTORmP
         MThQ6hIN+moUMvAMCFHczVVhG3P7t5bfd2fz6qUWfyT5aOvpksOP5BUFb75fYJLOQBK1
         IVtg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ayloRglD0eS10z3UsmXTGwzrr5IgwZw1cPwUAqyqMGQ=;
        b=UlUUwHca0AF5c28mhiQLE6bRvko4zQdeOaoBfw3p5Y2zsIHcpl5CgWWQ/yn2N0xHMT
         1koR3fIqwWJXQ7HgZ9NRTtJoOhhiYpNs/gXmry4TLmYcMQx/n8IGwdxuGVPgzaZa2f+a
         Yjql4q1KsR2QGmoRusPZcj8fxc3YAgR+klVO10Pr77K7m9+8JMa74E1Mqy3P+ztHvrW+
         UzTQWsqn41fXBRcPAQyzWM3MsbtztRcO87K0xb+nazGjB6+m+4ws45JnRn9OfMkjJJs1
         DNtN63RVd6eEMDDMa6kNGa2GXK9XgqyzjpYJeP1JpMZs/K+WQRQ4QD6KRNb/PdANReS5
         5aiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ayloRglD0eS10z3UsmXTGwzrr5IgwZw1cPwUAqyqMGQ=;
        b=bQ9jCtHthWvouaL91BJDuv8IEVaf3/oRpVKRaBjgfrt0JyHnJTJXstxYtZi36LowF4
         ni9jEHI8aO4Y1hjVzJ26eeFOg0uB1JD37oVl7Gftm+GLqEE3rDKCj7qN7aLlAvlQtGEf
         8I+vy4I+HVV8aKPAhVglrVlEBDDcZnjb3drGDVwfF+HdlaePAJ3pbJXydCXXyjkHpn+C
         bdDGoCJ/dAdN0GNd5Vs/D75wJJljeYhjH41EOzVXH+SLF4jMt76EzIQ4h4svWAHjul9Y
         1joZyxi/jLmtrjp+GHXK23jFDW9+56eFffDvBPj5T55kbscL7nCnMV/qPGmwJGALBXaf
         roCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kNs2PJnRfCOryK+qmyqOuTVTFqq1AUQ2t4zhS6VnNdYmzUsD/
	lD4bXFHG/ID5RaidMtHEh9E=
X-Google-Smtp-Source: ABdhPJwoc0R/Volhv41HGIqckJ4toZbMB+sZL/2cWSy5+uE6glLuo8p8wibxiBRcTP6EvxJz24FNLw==
X-Received: by 2002:a05:6808:1405:: with SMTP id w5mr4120939oiv.17.1643089117476;
        Mon, 24 Jan 2022 21:38:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3488:: with SMTP id c8ls1367180otu.2.gmail; Mon, 24
 Jan 2022 21:38:37 -0800 (PST)
X-Received: by 2002:a9d:6b01:: with SMTP id g1mr13989973otp.101.1643089116863;
        Mon, 24 Jan 2022 21:38:36 -0800 (PST)
Date: Mon, 24 Jan 2022 21:38:36 -0800 (PST)
From: Akshith Gunasekaran <akshith.573@gmail.com>
To: Clang Built Linux <clang-built-linux@googlegroups.com>
Message-Id: <7dab5a16-01fa-496f-b9c7-8111b9404541n@googlegroups.com>
Subject: whole kernel bitcode
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_8308_1830710718.1643089116287"
X-Original-Sender: akshith.573@gmail.com
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

------=_Part_8308_1830710718.1643089116287
Content-Type: multipart/alternative; 
	boundary="----=_Part_8309_1118740266.1643089116287"

------=_Part_8309_1118740266.1643089116287
Content-Type: text/plain; charset="UTF-8"

Hi All,

There have been attempts at producing llvm whole program bitcode for the 
Linux kernel. But this was prior to Linux being fully compatible with the 
LLVM toolchain.

Given the current LLMV toolchain can successfully compile the Linux kernel, 
can someone advice me/point me to resources on how to produce whole program 
bitcode for the kernel?

And can I produce a bootable kernel binary from this whole kernel bitcode?

Best
G

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7dab5a16-01fa-496f-b9c7-8111b9404541n%40googlegroups.com.

------=_Part_8309_1118740266.1643089116287
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<div><br></div><div>There have been attempts at producing llvm whole=
 program bitcode for the Linux kernel. But this was prior to Linux being fu=
lly compatible with the LLVM toolchain.</div><div><br></div><div>Given the =
current LLMV toolchain can successfully compile the Linux kernel, can someo=
ne advice me/point me to resources on how to produce whole program bitcode =
for the kernel?</div><div><br></div><div>And can I produce a bootable kerne=
l binary from this whole kernel bitcode?</div><div><br></div><div>Best</div=
><div>G</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/7dab5a16-01fa-496f-b9c7-8111b9404541n%40google=
groups.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.co=
m/d/msgid/clang-built-linux/7dab5a16-01fa-496f-b9c7-8111b9404541n%40googleg=
roups.com</a>.<br />

------=_Part_8309_1118740266.1643089116287--

------=_Part_8308_1830710718.1643089116287--
