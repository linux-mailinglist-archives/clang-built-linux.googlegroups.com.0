Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5XR5CBAMGQEOWQORPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63a.google.com (mail-ej1-x63a.google.com [IPv6:2a00:1450:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6F434681D
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 19:52:38 +0100 (CET)
Received: by mail-ej1-x63a.google.com with SMTP id r26sf1469021eja.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 11:52:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616525558; cv=pass;
        d=google.com; s=arc-20160816;
        b=n/oa1xtpnIYhZwl/tK9q3aFaPtN5w/eCY2bxsZBJS3/kKFnUHiMPvSO9WBsHDbSJ7I
         13HBksaTnFZOq4RmPDaO7XmooE/8FhZACiR2pCkza+2gCNDMpGXCBcNM96k4079FDgYm
         0HkqZ9vGHk1+ozmCqx/gXXUoHV+yGGeSPbOYN1V40bYNBwG4iCRJokkLN9yYTTAGXXwl
         CSYf61vKVRYU6hh9ve7AB3BwIMgVoImCMxi0yvfjpyy1H/uYCcetkOg6SfdrPqn8GPN1
         CKuKsV7p4owCtCzgxSvjKmcAB4mkzXIYCt5hYgixUpcaijrHKcsOPNkJWEcOmhRdoRaN
         M1vA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aKpXcRLnB/K+G1jcgKFFGqQOJz09x6UzhYV9gSxPH70=;
        b=kE4fjnrTfAApt57rUWvbI0//knaYbFGvtx+dQyGrAA74fQYt36nTMsA6RgsUm7twrA
         X+J/6O7qRn3X3Nvvy1bJ4mSV+08wKTH9lCEZmdyQejoY0WClGapF++2/yCpXahV/BQ7b
         zg15tYuif9BUeiWNtxqtv0UGeDwazAI5SlDQSAWAn/2aV2QlkjDqog7OTK2xbGsG6no1
         YjhfuRI1CJBbDE39cv6NTaPlOw00wgZjNRZ3Qzqp7qWOai8kO6gDmOldDEK51F/JxOmG
         swVc09Tui/ScBQ6VFhZYhVwtOfEswf3bGIm/DICtmQx+MSawwrXlxJhYwimGQi5cVjpb
         b/2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o3ghx8Uj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aKpXcRLnB/K+G1jcgKFFGqQOJz09x6UzhYV9gSxPH70=;
        b=XganUxpJU1+0pSly3V7O0ElRjehSE393PL4Y1613lVdEWcQt6+Pa47oymFvXrX3T7N
         kcy+F86MGXYmHtGhZxffW6Jo9L5S8XqV6WkcdoPLj6JId240wjokCYT4fguliBzIlquS
         5+yTh6XMiwiQ5Bm7Cc9gUXWIgOoLei52oe5KGVuM1U5Dj8V2Qvy9GrpZs91cmHDLJHfu
         sO8MJFM/3zXdpL0NoS4UjIA58PIHYH/QeA8izlXeOBUv8aq92WlknFepjnpdyK0DOXNm
         h5juNAvINNbZyMbdHQcr+h1MGsWkv/aEp/zooczWe9uYHRUNX8hJ9j9rW6pz4yfk7PQE
         WAiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aKpXcRLnB/K+G1jcgKFFGqQOJz09x6UzhYV9gSxPH70=;
        b=pN9vJsyNUManvJoV9OKEjsxwhY2lumGEunCQeBKi+MSdPqvDJUp6ZPPszlGeTFY6IS
         9SwjTBbhW9KqK89pL3MB2y2AksfePenmUIZEf7PGAjOVg6RaF5WYj+heMAY3E/W+XV73
         +ZfKTl2M0Mj0lsN9rR7gGgCVJGtoB7tULbmbU+O7MldmqzhNkUIwZS9gCoHV1F0TL574
         bF69XOQEEXfGkpU8DxFkO4yuylP0YK1lb0tS/NTQGienVZyQKNjXqPv6Z/fvaSFIxxqo
         ERwdXyuste2NMwNKq0O/MSdQmGgYJjzmWmY0haSUh+I0cI23di9c2+BzAGzG2shYhulM
         wGEg==
X-Gm-Message-State: AOAM530sTWgRtOwmroebPZCJvjUn5LNkt+9jxKtf5eNkuqnDVZ1o6yPM
	PwoYu6j6T7DxSnNxQkLrvxg=
X-Google-Smtp-Source: ABdhPJzl5fqNgyAT+tSyiH5rMlI19CHY07ovL+riVhaa6O35uLfCuHefqNQzcMjNZxd15eJRGkeTdw==
X-Received: by 2002:a05:6402:8c2:: with SMTP id d2mr6168590edz.4.1616525558718;
        Tue, 23 Mar 2021 11:52:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:c1ca:: with SMTP id bw10ls1711646ejb.5.gmail; Tue,
 23 Mar 2021 11:52:37 -0700 (PDT)
X-Received: by 2002:a17:907:9e6:: with SMTP id ce6mr6132764ejc.207.1616525557838;
        Tue, 23 Mar 2021 11:52:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616525557; cv=none;
        d=google.com; s=arc-20160816;
        b=EC23HzkD0FIpXYT15kSKnpkSWbKOXiZIeIRnrC35iyWzZVnKstwuwqaIwpI+Ea24cO
         lj4UwIUZWle/RSsqu7M0iIuVOWK3fVb9LDChLiQCLXBAMxQV5curUTVGEu20xzct00tb
         dlVVgwWTABP8BE7ST0cJ9SX09/IgFWB5O9M8RZr4fPp+XmSYH8k7kI++GJ0Dvq3O7tcQ
         8PMXOaqaAVz6OoIAOMxBHHpoZwjJRPM9Clc8NuhhMdkKOXYzOTAj5+uF4Kc3EEJnbdnT
         V/lHrDxNJid0cnulWtJzvHmgpY7Z72r3rR+RsegEh6hrz2RJXf/bmoop1ZzWRUEepaST
         ++jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XdjW5KEjoRCXCPW8zm041OQzl9EtHj2xizq7KLEzF3w=;
        b=qoUkWBsOWLe3YAgfbiRJrafRQSqGKsCdtEFs9JRGSKI2g6FYf36ncEYDHoXrkp0awx
         369Jkl8/z1ej5cLOlTfF1w+ahoWPSdtCeQS+cgJjugmr4a5tW44/1AFJstccF+MTyMfv
         udv70wp29ALdc8WHJMFHvZLvcqDfhgk0YdsMmC1kfu+H4b+7Yt5RP+AQ/+1g0360n6J2
         wGRfmcjzqo52RoA+r6UAIyGVUewq5/vcSn3KrETptLOGA5b48znfNwVkRBhvm5fgtmXc
         blX/9OkjE7E2SACjJ8Prh6AIpUioVu3L70bCtkhhdWfzcYDv5HCugpbFXq5a2cOVuBzI
         h9Lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o3ghx8Uj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id w5si619542edv.1.2021.03.23.11.52.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 11:52:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id s17so27015200ljc.5
        for <clang-built-linux@googlegroups.com>; Tue, 23 Mar 2021 11:52:37 -0700 (PDT)
X-Received: by 2002:a2e:9a4e:: with SMTP id k14mr4027762ljj.116.1616525557135;
 Tue, 23 Mar 2021 11:52:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210316213136.1866983-1-ndesaulniers@google.com> <YFnyHaVyvgYl/qWg@kroah.com>
In-Reply-To: <YFnyHaVyvgYl/qWg@kroah.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Mar 2021 11:52:26 -0700
Message-ID: <CAKwvOd=9HwLcTD8GaMsbEWiTPfZ+fj=vgFOefqBxDYkFiv_6YQ@mail.gmail.com>
Subject: Re: [PATCH] scripts: stable: add script to validate backports
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Sasha Levin <sashal@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	"# 3.4.x" <stable@vger.kernel.org>
Content-Type: multipart/mixed; boundary="0000000000009ade5b05be38af80"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o3ghx8Uj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

--0000000000009ade5b05be38af80
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 23, 2021 at 6:56 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Tue, Mar 16, 2021 at 02:31:33PM -0700, Nick Desaulniers wrote:
> > A common recurring mistake made when backporting patches to stable is
> > forgetting to check for additional commits tagged with `Fixes:`. This
> > script validates that local commits have a `commit <sha40> upstream.`
> > line in their commit message, and whether any additional `Fixes:` shas
> > exist in the `master` branch but were not included. It can not know
> > about fixes yet to be discovered, or fixes sent to the mailing list but
> > not yet in mainline.
> >
> > To save time, it avoids checking all of `master`, stopping early once
> > we've reached the commit time of the earliest backport. It takes 0.5s to
> > validate 2 patches to linux-5.4.y when master is v5.12-rc3 and 5s to
> > validate 27 patches to linux-4.19.y. It does not recheck dependencies of
> > found fixes; the user is expected to run this script to a fixed point.
> > It depnds on pygit2 python library for working with git, which can be
> > installed via:
> > $ pip3 install pygit2
> >
> > It's expected to be run from a stable tree with commits applied.  For
> > example, consider 3cce9d44321e which is a fix for f77ac2e378be. Let's
> > say I cherry picked f77ac2e378be into linux-5.4.y but forgot
> > 3cce9d44321e (true story). If I ran:
> >
> > $ ./scripts/stable/check_backports.py
> > Checking 1 local commits for additional Fixes: in master
> > Please consider backporting 3cce9d44321e as a fix for f77ac2e378be
>
> While interesting, I don't use a git tree for the stable queue, so this
> doesn't really fit into my workflow, sorry.

Well, what is your workflow?

> And we do have other "stable tree helper" scripts in the
> stable-queue.git repo, perhaps that's a better place for this than the
> main kernel repo?

Sure, here it is moved over to there. Let me know if there's a
preferred way to send it.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D9HwLcTD8GaMsbEWiTPfZ%2Bfj%3DvgFOefqBxDYkFiv_6YQ%40mail.gmail.com.

--0000000000009ade5b05be38af80
Content-Type: application/octet-stream; 
	name="0001-scripts-add-script-to-validate-backports.patch"
Content-Disposition: attachment; 
	filename="0001-scripts-add-script-to-validate-backports.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kmmdf4sb0>
X-Attachment-Id: f_kmmdf4sb0

RnJvbSBlOTc4YTNiNTFmNmZhMjgwMTk0OGY0MjIzNGQ0YmYxMjFiYjFhMGVhIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBOaWNrIERlc2F1bG5pZXJzIDxuZGVzYXVsbmllcnNAZ29vZ2xl
LmNvbT4KRGF0ZTogVHVlLCAyMyBNYXIgMjAyMSAxMTo0MzoyOSAtMDcwMApTdWJqZWN0OiBbUEFU
Q0hdIHNjcmlwdHM6IGFkZCBzY3JpcHQgdG8gdmFsaWRhdGUgYmFja3BvcnRzCgpBIGNvbW1vbiBy
ZWN1cnJpbmcgbWlzdGFrZSBtYWRlIHdoZW4gYmFja3BvcnRpbmcgcGF0Y2hlcyB0byBzdGFibGUg
aXMKZm9yZ2V0dGluZyB0byBjaGVjayBmb3IgYWRkaXRpb25hbCBjb21taXRzIHRhZ2dlZCB3aXRo
IGBGaXhlczpgLiBUaGlzCnNjcmlwdCB2YWxpZGF0ZXMgdGhhdCBsb2NhbCBjb21taXRzIGhhdmUg
YSBgY29tbWl0IDxzaGE0MD4gdXBzdHJlYW0uYApsaW5lIGluIHRoZWlyIGNvbW1pdCBtZXNzYWdl
LCBhbmQgd2hldGhlciBhbnkgYWRkaXRpb25hbCBgRml4ZXM6YCBzaGFzCmV4aXN0IGluIHRoZSBg
bWFzdGVyYCBicmFuY2ggYnV0IHdlcmUgbm90IGluY2x1ZGVkLiBJdCBjYW4gbm90IGtub3cKYWJv
dXQgZml4ZXMgeWV0IHRvIGJlIGRpc2NvdmVyZWQsIG9yIGZpeGVzIHNlbnQgdG8gdGhlIG1haWxp
bmcgbGlzdCBidXQKbm90IHlldCBpbiBtYWlubGluZS4KClRvIHNhdmUgdGltZSwgaXQgYXZvaWRz
IGNoZWNraW5nIGFsbCBvZiBgbWFzdGVyYCwgc3RvcHBpbmcgZWFybHkgb25jZQp3ZSd2ZSByZWFj
aGVkIHRoZSBjb21taXQgdGltZSBvZiB0aGUgZWFybGllc3QgYmFja3BvcnQuIEl0IHRha2VzIDAu
NXMgdG8KdmFsaWRhdGUgMiBwYXRjaGVzIHRvIGxpbnV4LTUuNC55IHdoZW4gbWFzdGVyIGlzIHY1
LjEyLXJjMyBhbmQgNXMgdG8KdmFsaWRhdGUgMjcgcGF0Y2hlcyB0byBsaW51eC00LjE5LnkuIEl0
IGRvZXMgbm90IHJlY2hlY2sgZGVwZW5kZW5jaWVzIG9mCmZvdW5kIGZpeGVzOyB0aGUgdXNlciBp
cyBleHBlY3RlZCB0byBydW4gdGhpcyBzY3JpcHQgdG8gYSBmaXhlZCBwb2ludC4KSXQgZGVwbmRz
IG9uIHB5Z2l0MiBweXRob24gbGlicmFyeSBmb3Igd29ya2luZyB3aXRoIGdpdCwgd2hpY2ggY2Fu
IGJlCmluc3RhbGxlZCB2aWE6CiQgcGlwMyBpbnN0YWxsIHB5Z2l0MgoKSXQncyBleHBlY3RlZCB0
byBiZSBydW4gZnJvbSBhIHN0YWJsZSB0cmVlIHdpdGggY29tbWl0cyBhcHBsaWVkLiAgRm9yCmV4
YW1wbGUsIGNvbnNpZGVyIDNjY2U5ZDQ0MzIxZSB3aGljaCBpcyBhIGZpeCBmb3IgZjc3YWMyZTM3
OGJlLiBMZXQncwpzYXkgSSBjaGVycnkgcGlja2VkIGY3N2FjMmUzNzhiZSBpbnRvIGxpbnV4LTUu
NC55IGJ1dCBmb3Jnb3QKM2NjZTlkNDQzMjFlICh0cnVlIHN0b3J5KS4gSWYgSSByYW46CgokIC4v
c2NyaXB0cy9zdGFibGUvY2hlY2tfYmFja3BvcnRzLnB5CkNoZWNraW5nIDEgbG9jYWwgY29tbWl0
cyBmb3IgYWRkaXRpb25hbCBGaXhlczogaW4gbWFzdGVyClBsZWFzZSBjb25zaWRlciBiYWNrcG9y
dGluZyAzY2NlOWQ0NDMyMWUgYXMgYSBmaXggZm9yIGY3N2FjMmUzNzhiZQoKU28gdGhlbiBJIGNv
dWxkIGNoZXJyeSBwaWNrIDNjY2U5ZDQ0MzIxZSBhcyB3ZWxsOgokIGdpdCBjaGVycnktcGljayAt
c3ggM2NjZTlkNDQzMjFlCiQgLi9zY3JpcHRzL3N0YWJsZS9jaGVja19iYWNrcG9ydHMucHkKLi4u
CkV4Y2VwdGlvbjogTWlzc2luZyAnY29tbWl0IDxzaGE0MD4gdXBzdHJlYW0uJyBsaW5lCgpPb3Bz
LCBsZXQgbWUgZml4dXAgdGhlIGNvbW1pdCBtZXNzYWdlIGFuZCByZXRyeS4KJCBnaXQgY29tbWl0
IC0tYW1lbmQKPGZpeCBjb21taXQgbWVzc2FnZT4KJCAuL3NjcmlwdHMvc3RhYmxlL2NoZWNrX2Jh
Y2twb3J0cy5weQpDaGVja2luZyAyIGxvY2FsIGNvbW1pdHMgZm9yIGFkZGl0aW9uYWwgRml4ZXM6
IGluIG1hc3RlcgokIGVjaG8gJD8KMAoKVGhpcyBhbGxvd3MgZm9yIGNsaWVudCBzaWRlIHZhbGlk
YXRpb24gYnkgdGhlIGJhY2twb3J0cyBhdXRob3IsIGFuZApzZXJ2ZXIgc2lkZSB2YWxpZGF0aW9u
IGJ5IHRoZSBzdGFibGUga2VybmVsIG1haW50YWluZXJzLgoKU2lnbmVkLW9mZi1ieTogTmljayBE
ZXNhdWxuaWVycyA8bmRlc2F1bG5pZXJzQGdvb2dsZS5jb20+Ci0tLQogc2NyaXB0cy9jaGVja19i
YWNrcG9ydHMucHkgfCA5MiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDkyIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDc1NSBzY3Jp
cHRzL2NoZWNrX2JhY2twb3J0cy5weQoKZGlmZiAtLWdpdCBhL3NjcmlwdHMvY2hlY2tfYmFja3Bv
cnRzLnB5IGIvc2NyaXB0cy9jaGVja19iYWNrcG9ydHMucHkKbmV3IGZpbGUgbW9kZSAxMDA3NTUK
aW5kZXggMDAwMDAwMDAwMDAwLi41MjkyOTRlMjQ3Y2EKLS0tIC9kZXYvbnVsbAorKysgYi9zY3Jp
cHRzL2NoZWNrX2JhY2twb3J0cy5weQpAQCAtMCwwICsxLDkyIEBACisjIS91c3IvYmluL2VudiBw
eXRob24zCisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCisjIENvcHlyaWdodCAo
QykgMjAyMSBHb29nbGUsIEluYy4KKworaW1wb3J0IG9zCitpbXBvcnQgcmUKK2ltcG9ydCBzeXMK
KworaW1wb3J0IHB5Z2l0MiBhcyBwZworCisKK2RlZiBnZXRfaGVhZF9icmFuY2gocmVwbyk6Cisg
ICAgIyBXYWxrIHRoZSBicmFuY2hlcyB0byBmaW5kIHdoaWNoIGlzIEhFQUQuCisgICAgZm9yIGJy
YW5jaF9uYW1lIGluIHJlcG8uYnJhbmNoZXM6CisgICAgICAgIGJyYW5jaCA9IHJlcG8uYnJhbmNo
ZXNbYnJhbmNoX25hbWVdCisgICAgICAgIGlmIGJyYW5jaC5pc19oZWFkKCk6CisgICAgICAgICAg
ICByZXR1cm4gYnJhbmNoCisKKworZGVmIGdldF9sb2NhbF9jb21taXRzKHJlcG8pOgorICAgIGhl
YWRfYnJhbmNoID0gZ2V0X2hlYWRfYnJhbmNoKHJlcG8pCisgICAgIyBXYWxrIHRoZSBIRUFEIHJl
ZiB1bnRpbCB3ZSBoaXQgdGhlIGZpcnN0IGNvbW1pdCBmcm9tIHRoZSB1cHN0cmVhbS4KKyAgICB3
YWxrZXIgPSByZXBvLndhbGsocmVwby5oZWFkLnRhcmdldCkKKyAgICB1cHN0cmVhbV9icmFuY2gg
PSBoZWFkX2JyYW5jaC51cHN0cmVhbQorICAgIHVwc3RyZWFtX2NvbW1pdCwgXyA9IHJlcG8ucmVz
b2x2ZV9yZWZpc2godXBzdHJlYW1fYnJhbmNoLm5hbWUpCisgICAgd2Fsa2VyLmhpZGUodXBzdHJl
YW1fY29tbWl0LmlkKQorICAgIGNvbW1pdHMgPSBbY29tbWl0IGZvciBjb21taXQgaW4gd2Fsa2Vy
XQorICAgIGlmIG5vdCBsZW4oY29tbWl0cyk6CisgICAgICAgIHJhaXNlIEV4Y2VwdGlvbigiTm8g
bG9jYWwgY29tbWl0cyIpCisgICAgcmV0dXJuIGNvbW1pdHMKKworCitkZWYgZ2V0X3Vwc3RyZWFt
X3NoYXMoY29tbWl0cyk6CisgICAgdXBzdHJlYW1fc2hhcyA9IFtdCisgICAgcHJvZyA9IHJlLmNv
bXBpbGUoJ2NvbW1pdCAoWzAtOWEtZl17NDB9KSB1cHN0cmVhbS4nKQorICAgICMgRm9yIGVhY2gg
bGluZSBvZiBlYWNoIGNvbW1pdCBtZXNzYWdlLCByZWNvcmQgdGhlCisgICAgIyAiY29tbWl0IDxz
aGE0MD4gdXBzdHJlYW0uIiBsaW5lLgorICAgIGZvciBjb21taXQgaW4gY29tbWl0czoKKyAgICAg
ICAgZm91bmRfdXBzdHJlYW1fbGluZSA9IEZhbHNlCisgICAgICAgIGZvciBsaW5lIGluIGNvbW1p
dC5tZXNzYWdlLnNwbGl0bGluZXMoKToKKyAgICAgICAgICAgIHJlc3VsdCA9IHByb2cuc2VhcmNo
KGxpbmUpCisgICAgICAgICAgICBpZiByZXN1bHQ6CisgICAgICAgICAgICAgICAgdXBzdHJlYW1f
c2hhcy5hcHBlbmQocmVzdWx0Lmdyb3VwKDEpWzoxMl0pCisgICAgICAgICAgICAgICAgZm91bmRf
dXBzdHJlYW1fbGluZSA9IFRydWUKKyAgICAgICAgICAgICAgICBicmVhaworICAgICAgICBpZiBu
b3QgZm91bmRfdXBzdHJlYW1fbGluZToKKyAgICAgICAgICAgIHJhaXNlIEV4Y2VwdGlvbigiTWlz
c2luZyAnY29tbWl0IDxzaGE0MD4gdXBzdHJlYW0uJyBsaW5lIikKKyAgICByZXR1cm4gdXBzdHJl
YW1fc2hhcworCisKK2RlZiBnZXRfb2xkZXN0X2NvbW1pdF90aW1lKHJlcG8sIHNoYXMpOgorICAg
IGNvbW1pdF90aW1lcyA9IFtyZXBvLnJlc29sdmVfcmVmaXNoKHNoYSlbMF0uY29tbWl0X3RpbWUg
Zm9yIHNoYSBpbiBzaGFzXQorICAgIHJldHVybiBzb3J0ZWQoY29tbWl0X3RpbWVzKVswXQorCisK
K2RlZiBnZXRfZml4ZXNfZm9yKHNoYXMpOgorICAgIHNoYXMgPSBzZXQoc2hhcykKKyAgICBwcm9n
ID0gcmUuY29tcGlsZSgiRml4ZXM6IChbMC05YS1mXXsxMiw0MH0pIikKKyAgICAjIFdhbGsgY29t
bWl0cyBpbiB0aGUgbWFzdGVyIGJyYW5jaC4KKyAgICBtYXN0ZXJfY29tbWl0LCBtYXN0ZXJfcmVm
ID0gcmVwby5yZXNvbHZlX3JlZmlzaCgibWFzdGVyIikKKyAgICB3YWxrZXIgPSByZXBvLndhbGso
bWFzdGVyX3JlZi50YXJnZXQpCisgICAgb2xkZXN0X2NvbW1pdF90aW1lID0gZ2V0X29sZGVzdF9j
b21taXRfdGltZShyZXBvLCBzaGFzKQorICAgIGZpeGVzID0gW10KKyAgICBmb3IgY29tbWl0IGlu
IHdhbGtlcjoKKyAgICAgICAgIyBJdCdzIG5vdCBwb3NzaWJsZSBmb3IgYSBGaXhlczogdG8gYmUg
Y29tbWl0dGVkIGJlZm9yZSBhIGZpeGVkIHRhZywgc28KKyAgICAgICAgIyBkb24ndCBpdGVyYXRl
IGFsbCBvZiBnaXQgaGlzdG9yeS4KKyAgICAgICAgaWYgY29tbWl0LmNvbW1pdF90aW1lIDwgb2xk
ZXN0X2NvbW1pdF90aW1lOgorICAgICAgICAgICAgYnJlYWsKKyAgICAgICAgZm9yIGxpbmUgaW4g
cmV2ZXJzZWQoY29tbWl0Lm1lc3NhZ2Uuc3BsaXRsaW5lcygpKToKKyAgICAgICAgICAgIHJlc3Vs
dCA9IHByb2cuc2VhcmNoKGxpbmUpCisgICAgICAgICAgICBpZiBub3QgcmVzdWx0OgorICAgICAg
ICAgICAgICAgIGNvbnRpbnVlCisgICAgICAgICAgICBmaXhlc19zaGEgPSByZXN1bHQuZ3JvdXAo
MSlbOjEyXQorICAgICAgICAgICAgaWYgZml4ZXNfc2hhIGluIHNoYXMgYW5kIGNvbW1pdC5pZC5o
ZXhbOjEyXSBub3QgaW4gc2hhczoKKyAgICAgICAgICAgICAgICBmaXhlcy5hcHBlbmQoKGNvbW1p
dC5pZC5oZXhbOjEyXSwgZml4ZXNfc2hhKSkKKyAgICByZXR1cm4gZml4ZXMKKworCitkZWYgcmVw
b3J0KGZpeGVzKToKKyAgICBpZiBsZW4oZml4ZXMpOgorICAgICAgICBmb3IgZml4LCBicm9rZSBp
biBmaXhlczoKKyAgICAgICAgICAgIHByaW50KCJQbGVhc2UgY29uc2lkZXIgYmFja3BvcnRpbmcg
JXMgYXMgYSBmaXggZm9yICVzIiAlIChmaXgsIGJyb2tlKSkKKyAgICAgICAgc3lzLmV4aXQoMSkK
KworCitpZiBfX25hbWVfXyA9PSAiX19tYWluX18iOgorICAgIHJlcG8gPSBwZy5SZXBvc2l0b3J5
KG9zLmdldGN3ZCgpKQorICAgIGNvbW1pdHMgPSBnZXRfbG9jYWxfY29tbWl0cyhyZXBvKQorICAg
IHByaW50KCJDaGVja2luZyAlZCBsb2NhbCBjb21taXRzIGZvciBhZGRpdGlvbmFsIEZpeGVzOiBp
biBtYXN0ZXIiICUgKGxlbihjb21taXRzKSkpCisgICAgdXBzdHJlYW1fc2hhcyA9IGdldF91cHN0
cmVhbV9zaGFzKGNvbW1pdHMpCisgICAgZml4ZXMgPSBnZXRfZml4ZXNfZm9yKHVwc3RyZWFtX3No
YXMpCisgICAgcmVwb3J0KGZpeGVzKQotLSAKMi4zMS4wLjI5MS5nNTc2YmE5ZGNkYWYtZ29vZwoK
--0000000000009ade5b05be38af80--
