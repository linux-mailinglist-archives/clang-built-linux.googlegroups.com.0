Return-Path: <clang-built-linux+bncBAABBOE6RD3QKGQEY7U4J6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B2C1F6623
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 13:02:16 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id r1sf1202681wmh.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 04:02:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591873336; cv=pass;
        d=google.com; s=arc-20160816;
        b=iNa/PZEI2lJ2TARl+zVttnKclp0ZxTY7eo2U9Ie8TcJyASISZrs6cmkFwKiSipuk1N
         tx2A42zz/f4hV1zJPlsGqFL5ZilcpJQLDKbnnKj9h0xE1B83jQYifgbiMNTKKqukvBRL
         /KD3noYuJBXPZw2GzrhmtQ4uWymYurwjmNQiBeKIjTSsdbZeRctB0On7UT2C5aNb94rh
         u8CZzVMXzK8kW37QxESe6oj1JdXaL0/UatMbHYqwwKBtoRH3CjKXmrvQR1/C2OyzaomY
         uPHvTAeSYa1xsNunOl3enwv8Z5/Xs7k75JrEO5s1G8g0taq0PTUSE8FTPA/QA0iYHuuI
         Aqwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=j33MVfKpFxmJ4T+XnZ/wVfidCtRf3OhZfDum7P/Fj0Y=;
        b=eCUd079mXUXux6rLAqgeBNXoO1RUDTZ06bmeAtjjU0L4kxx/D1eW/UsDIacBBilPOs
         W7Yy5IuRLPYsnASTp6JQUbB5o6rMANYYC6d4Yx7FDSAPMK97n+5oe85tEhWlV6VXA95O
         atucclbv4+NNTfMS/PrD+2ePdwbR7d3E1zf9wz1NHjdvYV1z/DRi1k5zo5s3Z5yo44Go
         xcIxQSsoYMS2M8FmB/zf+71EIISR1ahwYsisDDmiCWk6GK8RHrxPVd9VwADmlOgb/rDV
         dJ9li5i5M6cshWSenbaz8k5mq5P6JPIvTi5EgGjXfuK8NNCWviXdNg3Mg2DzNfV5XPbN
         tEjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j33MVfKpFxmJ4T+XnZ/wVfidCtRf3OhZfDum7P/Fj0Y=;
        b=DxHXrF6AvXN2CIn1yRGXo9xbbhH79RT7hEgVjKaCoGD3yzXN0ZbTSQTBmbmnNdjnEA
         8jGkf7HwslrY7jRRLoNzIOdFtGkvtsv+A6S7XmN1nEQVBxz2y9b7Zq1DE2Q+tUCQlAF1
         WSU/h/xyVu8vB8Ri5yL2JUePN8cljUEt9RZjUp2s8zTLh65kn4/qhxcFKUovg3GmxpvM
         evMZIMfLCx18GhRNFnooFqgTvryxQf1ZaAuozzBqbQPTcSuFhbDsK0/U3PnE8x8tAErx
         vIhq3/pd6MykLSJi/jQQMYKHL6r5xa0MamwcYgTqNHK5NtbTH2fxEv+8dkZwAjTO72Bt
         gP3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j33MVfKpFxmJ4T+XnZ/wVfidCtRf3OhZfDum7P/Fj0Y=;
        b=bmVr0wpsNg/ICraKSYqU9mVErrvNQXBrvOviIeHgZN/d5Ml3O53UwjevyN/Rm0VVV/
         wVZS8EEkbujDqPI4AbLW4sHrptAH6fbrvCZiZMxitNFY67ZwNlos6U0n0NdJgNQfom0J
         pWS34IadzmE/6kKkjk8IoPwmmIcaMHEhPG1RPrzvz0j+Gi4FhLcpV3JefiGvHln6WMkm
         OSY8eX/ARiask3nLQn2tijMRUn8aAetnCGfQfPhJA5ODYoyj3HzL0TgGHAVGLX19kQmo
         yb/Gze+KyGMplUnbfWe6SKXvLZI+fJIVm+jz7MrVZ19MvaaVZqokB10YzcyruHn5UL/d
         f+qg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zPgKG4B3FfSwZsYC96VC+DRnjl3f46wpFsKWw/GJW+oCg+1XH
	x6cypNoczrbMO80f9pEFfNI=
X-Google-Smtp-Source: ABdhPJwTnrCfKOMVJmN6CQKMi2naZ5jMXIZbKtWGieuu0hvwyS0TKHq5VKSRoFNXHH42IcpC+zACCg==
X-Received: by 2002:a1c:7f44:: with SMTP id a65mr8030574wmd.53.1591873336643;
        Thu, 11 Jun 2020 04:02:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82ce:: with SMTP id 72ls2098959wrc.1.gmail; Thu, 11 Jun
 2020 04:02:16 -0700 (PDT)
X-Received: by 2002:a5d:5389:: with SMTP id d9mr9570019wrv.77.1591873336264;
        Thu, 11 Jun 2020 04:02:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591873336; cv=none;
        d=google.com; s=arc-20160816;
        b=VieSJJS7tVLvu/FR8R6ncL75UqWPKiHeNBN9xAc7xi+idPtFgmRIUC6yVcPFK6CxoL
         UtETMXFKWs4ZscJv4JaoTj41JLV+UOaVyKuPyNS/KJt9UqlvoDroFUd74U9izqxSBTNH
         bilMXMsU+3TOs08YoAys7pPEaqVfxnRis2ljMeEfd/CcL3CMGQ0C52eXY9IU/hcdFB7c
         1hqe8keI2qrynaOhsEF+MvQqIZmI4GUkKfou2yT5BFWw1YsXCwwIBhE9AGY4OQza3yWv
         clcwxL0Mpn1d1r7nvECL4o9ftg2FEhETjcL4z3DxmhEs1A3G4KNRlnfScyY8H1d9+4eP
         TBbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject;
        bh=e81E78CV0eppBREEwp7Y8TUR2fWIFHHFvtQNc4orIhs=;
        b=BcnvXZ+vpZU2WTCsRFOeV6o25maHSwJul6i6J7SDduZCBPgN2P0MRy5usOJFOgytV0
         vlL8D1oXBpa7MO21zBBVbYB+VwMam7lh0jS47QK2EPPvD75VjleDeV6bAW1Hajz4L4py
         d8ZlcRh0eGIso2L+94RaBkxybsyQAriIFZ3j+evUN67jP/ayoE2NLP0B1B+mrZJgw4pf
         fmiCAOst17JsAzBlrqFNrKnwF0MMmfM/lPGt+na1l8JRHtPVpocIYV26IA+5rD9AlSy4
         B7Q2Y7YxJeElXexIecdypvXv4WWUiRbpNLZ/21v8nzJN+/yW2Db9u2FQmKFoIOyAcjPE
         OD6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [78.46.175.9])
        by gmr-mx.google.com with ESMTPS id o14si141179wrx.2.2020.06.11.04.02.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2020 04:02:16 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) client-ip=78.46.175.9;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id 7A959FD7E0;
	Thu, 11 Jun 2020 11:02:11 +0000 (UTC)
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones:
 Documentation/translations/it_IT
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Kees Cook <keescook@chromium.org>,
 Federico Vaga <federico.vaga@vaga.pv.it>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 David Sterba <dsterba@suse.com>, Randy Dunlap <rdunlap@infradead.org>,
 Theodore Ts'o <tytso@mit.edu>, "Darrick J. Wong" <darrick.wong@oracle.com>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Jacob Huisman <jacobhuisman@kernelthusiast.com>,
 =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
 Rob Herring <robh@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20200609201241.81518-1-grandmaster@al2klimov.de>
 <4235548.LvFx2qVVIh@harkonnen>
 <cd260d03-27a4-7794-f58f-21e8e0be9755@al2klimov.de>
 <202006102009.CB14D7F@keescook>
 <8ee16c38-e28b-b4e6-ed30-55a59e216b49@al2klimov.de>
 <CANiq72n50OVRtFAQkAmqjaj=dJTP9VqYYHN7++8O_t4cbfaJgw@mail.gmail.com>
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Message-ID: <3a6354fd-90ec-914f-b5df-0c4c219bd26e@al2klimov.de>
Date: Thu, 11 Jun 2020 13:02:08 +0200
MIME-Version: 1.0
In-Reply-To: <CANiq72n50OVRtFAQkAmqjaj=dJTP9VqYYHN7++8O_t4cbfaJgw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Spamd-Bar: /
X-Original-Sender: grandmaster@al2klimov.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of grandmaster@al2klimov.de
 designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
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



Am 11.06.20 um 12:40 schrieb Miguel Ojeda:
> On Thu, Jun 11, 2020 at 9:02 AM Alexander A. Klimov
> <grandmaster@al2klimov.de> wrote:
>>
>> Is any of you familiar with Golang?
> 
> Don't worry about that! I'd expect seasoned C programmers to be able
> to read Go (or near languages) -- at least to have a general idea of
> what an algorithm does.
> 
> It is not APL, after all :-)
Fine.


package main

import (
	"bufio"
	"bytes"
	"context"
	"errors"
	"fmt"
	fatomic "github.com/natefinch/atomic"
	"golang.org/x/sync/semaphore"
	"io"
	"io/ioutil"
	"net/http"
	"os"
	"os/exec"
	"regexp"
	"runtime"
	"sync"
	"sync/atomic"
	"time"
)

var fileSemaphore = semaphore.NewWeighted(int64(runtime.NumCPU()) * 16)
var wg sync.WaitGroup

var processingFiles = struct {
	sync.RWMutex

	files map[string]struct{}
}{
	files: map[string]struct{}{},
}

func main() {
	cmd := exec.Command("git", "ls-files", "-sz")
	cmd.Stderr = os.Stderr

	out, errSP := cmd.StdoutPipe()
	if errSP != nil {
		fmt.Fprintln(os.Stderr, errSP.Error())
		os.Exit(1)
	}

	if errSt := cmd.Start(); errSt != nil {
		fmt.Fprintln(os.Stderr, errSt.Error())
		os.Exit(1)
	}

	//go printProcessingFiles()

	buf := bufio.NewReader(out)
	for {
		file, errRB := buf.ReadBytes(0)
		if errRB != nil && errRB != io.EOF {
			if errWt := cmd.Wait(); errWt != nil {
				fmt.Fprintln(os.Stderr, errWt.Error())
				wg.Wait()
				os.Exit(1)
			}

			fmt.Fprintln(os.Stderr, errRB.Error())
			wg.Wait()
			os.Exit(1)
		}

		if bytes.HasPrefix(file, []byte{'1', '0', '0'}) {
			if fields := bytes.SplitN(bytes.SplitN(file, []byte{0}, 2)[0], 
[]byte{9}, 2); len(fields) == 2 {
				_ = fileSemaphore.Acquire(context.Background(), 1)
				wg.Add(1)
				go processFile(string(fields[1]))
			}
		}

		if errRB == io.EOF {
			break
		}
	}

	wg.Wait()

	if errWt := cmd.Wait(); errWt != nil {
		fmt.Fprintln(os.Stderr, errWt.Error())
		os.Exit(1)
	}
}

/*
func printProcessingFiles() {
	for {
		time.Sleep(time.Second)

		processingFiles.RLock()
		fmt.Fprintln(os.Stderr, processingFiles.files)
		processingFiles.RUnlock()
	}
}
*/

var httpLink = regexp.MustCompile(`\bhttp://[^# \t\r\n]*(?:\w|/)`)
var xmlns = regexp.MustCompile(`\bxmlns\b`)

func processFile(file string) error {
	defer fileSemaphore.Release(1)
	defer wg.Done()

	processingFiles.Lock()
	processingFiles.files[file] = struct{}{}
	processingFiles.Unlock()

	defer func() {
		processingFiles.Lock()
		delete(processingFiles.files, file)
		processingFiles.Unlock()
	}()

	content, errRF := ioutil.ReadFile(file)
	if errRF != nil {
		return errRF
	}

	lines := bytes.Split(content, []byte{'\n'})
	for i := range lines {
		if !xmlns.Match(lines[i]) {
			lines[i] = httpLink.ReplaceAllFunc(lines[i], processLink)
		}
	}

	if modified := bytes.Join(lines, []byte{'\n'}); bytes.Compare(modified, 
content) != 0 {
		var buf bytes.Buffer
		buf.Write(modified)
		return fatomic.WriteFile(file, &buf)
	}

	return nil
}

type linkOk struct {
	sync.Mutex

	ok uint32
}

var links = map[string]*linkOk{}
var linksLock sync.RWMutex
var notsecure = http.Client{Timeout: 10 * time.Minute}
var secure = http.Client{Timeout: 10 * time.Minute, CheckRedirect: 
httpsRedirect}

func processLink(link []byte) []byte {
	linkStr := string(bytes.TrimPrefix(link, []byte("http://")))

	linksLock.RLock()
	lo, ok := links[linkStr]
	linksLock.RUnlock()

	if !ok {
		linksLock.Lock()

		lo, ok = links[linkStr]
		if !ok {
			lo = &linkOk{}
			links[linkStr] = lo
		}

		linksLock.Unlock()
	}

	for {
		switch atomic.LoadUint32(&lo.ok) {
		case 0:
			lo.Lock()

			if atomic.LoadUint32(&lo.ok) == 0 {
				if httpsAble(linkStr) {
					atomic.StoreUint32(&lo.ok, 2)
				} else {
					atomic.StoreUint32(&lo.ok, 1)
				}
			}

			lo.Unlock()

			continue
		case 2:
			return bytes.Replace(link, []byte("http://"), []byte("https://"), 1)
		default:
			return link
		}
	}
}

func httpsAble(link string) bool {
	resp, errGt := secure.Get("https://" + link)
	if errGt != nil {
		return false
	}

	defer resp.Body.Close()

	if resp.StatusCode != 200 {
		return false
	}

	resps, errGt := notsecure.Get("http://" + link)
	if errGt != nil {
		return false
	}

	defer resps.Body.Close()

	if resps.StatusCode != 200 {
		return false
	}

	var buf, bufs bytes.Buffer

	if _, errCp := io.Copy(&buf, resp.Body); errCp != nil {
		return false
	}

	if _, errCp := io.Copy(&bufs, resps.Body); errCp != nil {
		return false
	}

	return bytes.Compare(buf.Bytes(), bufs.Bytes()) == 0
}

var insecure = errors.New("insecure")

func httpsRedirect(req *http.Request, _ []*http.Request) error {
	switch req.URL.Scheme {
	case "", "https":
		return nil
	}

	return insecure
}



> 
>>
>> @Maintainers Would any of you actually review like this? If yes, is the
>> pseudo-code not enough?
> 
> Well, Kees already mentioned he would like to see it :-) As he said,
> it is usually the way for bulk patches to present the
> algorithm/semantic patch/etc. that was used.
> 
> It is also useful to have it around so that it can be reused/reapplied
> later on, too.
If you're going to reproduce one of my patches for reviewing, checkout 
torvalds/master and travel back to the latest commit before I submitted 
the patch. Then run the algo.

> 
>> I didn't log that link-by-link. Maybe because I also didn't follow plain
>> HTTP redirects while opening HTTPS links. Maybe it even matched, but was
>> added after I made the changes.
> 
> It would be nice to have a list of links which cannot be converted,
> since nowadays they are likely to be the exception rather than the
> rule.
Don't worry, (by typing this words right now) I've noted this TODO of 
mine (after this patch round).

> 
>> * Linus *didn't even respond* (at least I didn't receive anything) to my
>> catch-them-all patch at all, not even like please not as .gz attachment
>> or please split by subsystem
> 
> Please take into account that LKML volume is huge and Linus (like
> everybody else) only reads a small subset. Further, as a general rule,
I've addressed Linus directly (CC LKML) and explicitly asked like will 
you have a look at this or not.

> Linus shouldn't be picking individual patches to begin with because
> that skips the review tree.
Who if not Linus shall review one huge patch spreading across lots of 
subsystems?

> 
> Cheers,
> Miguel
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3a6354fd-90ec-914f-b5df-0c4c219bd26e%40al2klimov.de.
